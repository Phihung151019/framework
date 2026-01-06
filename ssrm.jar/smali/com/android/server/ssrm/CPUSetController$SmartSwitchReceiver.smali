.class Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;
.super Lcom/android/server/ssrm/common/intent/SmartSwitch/ASmartSwitchER;
.source "CPUSetController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CPUSetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CPUSetController;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CPUSetController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/CPUSetController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;->this$0:Lcom/android/server/ssrm/CPUSetController;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/intent/SmartSwitch/ASmartSwitchER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 88
    check-cast p1, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;)V
    .locals 2
    .param p1, "event"    # Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;

    .line 92
    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->isSmartSwitchStarted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->isSmartSwitchOngoing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->isSmartSwitchTransfer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchE;->isSmartSwitchFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;->this$0:Lcom/android/server/ssrm/CPUSetController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/CPUSetController;->updateMediaProvier(Z)V

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;->this$0:Lcom/android/server/ssrm/CPUSetController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/CPUSetController;->updateMediaProvier(Z)V

    .line 97
    :cond_2
    :goto_1
    return-void
.end method
