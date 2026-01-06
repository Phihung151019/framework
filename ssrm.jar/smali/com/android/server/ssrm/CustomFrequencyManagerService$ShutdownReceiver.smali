.class Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;
.super Lcom/android/server/ssrm/common/intent/shutdown/AShutdownER;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShutdownReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/android/server/ssrm/common/intent/shutdown/AShutdownER;-><init>()V

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

    .line 1110
    check-cast p1, Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;)V
    .locals 1
    .param p1, "event"    # Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;

    .line 1113
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->releaseAllSlowdown()V

    .line 1117
    return-void
.end method
