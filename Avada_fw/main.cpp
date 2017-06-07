#include "hal.h"
#include "MsgQ.h"
#include "shell.h"
#include "uart.h"
#include "SimpleSensors.h"
#include "buttons.h"
#include "board.h"
#include "buzzer.h"

#define FLASH_DURATION  54

// Forever
EvtMsgQ_t<EvtMsg_t, MAIN_EVT_Q_LEN> EvtQMain;
extern CmdUart_t Uart;
void OnCmd(Shell_t *PShell);
void ITask();

// ==== Flash ====
void FlashCallback(void *p);

class GreenFlash_t {
private:
    virtual_timer_t ITmr;

    void LedOn() {}
public:
    void Fire() {
        LedOn();
        Buzzer.Off();
        chVTSet(&ITmr, MS2ST(FLASH_DURATION), FlashCallback, nullptr);
    }
    void Restart() { Buzzer.BuzzUp(); }
    bool IsReady() { return Buzzer.IsOnTop(); }
    void LedOff() {}
    void Init() {
        // Init pin
//        PinSetupOut()
        // Init DAC


    }
} GreenFlash;

void FlashCallback(void *p) {
    GreenFlash.LedOff();
}

int main(void) {
    // ==== Init Clock system ====
    SetupVCore(vcore1V5);
    Clk.EnablePrefetch();
    Clk.SetMSI4MHz();
    Clk.UpdateFreqValues();

    // === Init OS ===
    halInit();
    chSysInit();

    // ==== Init hardware ====
    EvtQMain.Init();
    Uart.Init(115200);
    Printf("\r%S %S\r", APP_NAME, BUILD_TIME);
    Clk.PrintFreqs();

    Buzzer.Init();
    GreenFlash.Init();

    SimpleSensors::Init();
    GreenFlash.Restart();

    // Main cycle
    ITask();
}

__noreturn
void ITask() {
    while(true) {
        EvtMsg_t Msg = EvtQMain.Fetch(TIME_INFINITE);
        switch(Msg.ID) {
            case evtIdShellCmd:
                OnCmd((Shell_t*)Msg.Ptr);
                ((Shell_t*)Msg.Ptr)->SignalCmdProcessed();
                break;

            case evtIdButtons:
                Printf("Btn\r");
                if(GreenFlash.IsReady()) {
                    GreenFlash.Fire();
                    GreenFlash.Restart();
                }
                break;

            default: break;
        } // switch
    } // while true
}

#if 1 // ======================= Command processing ============================
void OnCmd(Shell_t *PShell) {
    Cmd_t *PCmd = &PShell->Cmd;
//    __unused int32_t dw32 = 0;  // May be unused in some configurations
//    Uart.Printf("\r%S\r", PCmd->Name);
    // Handle command
    if(PCmd->NameIs("Ping")) PShell->Ack(retvOk);
    else if(PCmd->NameIs("Version")) PShell->Printf("%S %S\r", APP_NAME, BUILD_TIME);


    else PShell->Ack(retvCmdUnknown);
}
#endif
