.class Lcom/android/server/ssrm/CPUSetController$SingleTakeStatusReceiver;
.super Lcom/android/server/ssrm/common/intent/request/ASsrmRequestER;
.source "CPUSetController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CPUSetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleTakeStatusReceiver"
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

    .line 78
    iput-object p1, p0, Lcom/android/server/ssrm/CPUSetController$SingleTakeStatusReceiver;->this$0:Lcom/android/server/ssrm/CPUSetController;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/intent/request/ASsrmRequestER;-><init>()V

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

    .line 78
    check-cast p1, Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CPUSetController$SingleTakeStatusReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;)V
    .locals 3
    .param p1, "event"    # Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;

    .line 81
    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;->getStatusName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "statusName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "Camera_singletake"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/server/ssrm/CPUSetController$SingleTakeStatusReceiver;->this$0:Lcom/android/server/ssrm/CPUSetController;

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;->getStatusValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/CPUSetController;->updateSingleTake(Z)V

    .line 85
    :cond_0
    return-void
.end method
