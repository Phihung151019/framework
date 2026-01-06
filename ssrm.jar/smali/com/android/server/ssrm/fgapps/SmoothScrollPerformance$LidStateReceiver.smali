.class Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;
.super Lcom/android/server/ssrm/common/callback/fold/ALidStateER;
.source "SmoothScrollPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LidStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/callback/fold/ALidStateER;-><init>()V

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

    .line 130
    check-cast p1, Lcom/android/server/ssrm/common/callback/fold/LidStateE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/callback/fold/LidStateE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/callback/fold/LidStateE;)V
    .locals 2
    .param p1, "event"    # Lcom/android/server/ssrm/common/callback/fold/LidStateE;

    .line 133
    if-nez p1, :cond_0

    .line 134
    return-void

    .line 137
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/callback/fold/LidStateE;->isClose()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->-$$Nest$fputisBoostDisabledByFold(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;Z)V

    .line 139
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->execute(Z)V

    .line 141
    :cond_1
    return-void
.end method
