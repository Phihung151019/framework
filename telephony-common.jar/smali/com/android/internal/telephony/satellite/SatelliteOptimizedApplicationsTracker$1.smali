.class Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$1;
.super Landroid/os/Handler;
.source "SatelliteOptimizedApplicationsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;-><init>(Landroid/os/Looper;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$mhandlePackageRemoved(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 90
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$mhandlePackageMonitor(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    const-string v0, "HandleInitializeTracker() STARTED"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$mlog(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->-$$Nest$mhandleInitializeTracker(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;)V

    return-void
.end method
