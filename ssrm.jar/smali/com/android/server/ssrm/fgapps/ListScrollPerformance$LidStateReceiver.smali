.class Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;
.super Lcom/android/server/ssrm/common/callback/fold/ALidStateER;
.source "ListScrollPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/ListScrollPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LidStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/ListScrollPerformance;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

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

    .line 129
    check-cast p1, Lcom/android/server/ssrm/common/callback/fold/LidStateE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/callback/fold/LidStateE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/callback/fold/LidStateE;)V
    .locals 2
    .param p1, "event"    # Lcom/android/server/ssrm/common/callback/fold/LidStateE;

    .line 132
    if-nez p1, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/callback/fold/LidStateE;->isClose()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->-$$Nest$fputisBoostDisabledByFold(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;Z)V

    .line 137
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->execute(Z)V

    .line 139
    :cond_1
    return-void
.end method
