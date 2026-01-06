.class Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$2;
.super Ljava/lang/Object;
.source "CustomFrequencyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1188
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$2;->this$1:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1191
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$2;->this$1:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$2;->this$1:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$2;->this$1:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->-$$Nest$mgetPowerSavingMode(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->-$$Nest$mcheckRestricted(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->-$$Nest$fputmIsPerformanceRestricted(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;Z)V

    .line 1192
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$2;->this$1:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->-$$Nest$fgetmIsPerformanceRestricted(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/DeviceStatus;->disableBoosting(Z)V

    .line 1193
    return-void
.end method
