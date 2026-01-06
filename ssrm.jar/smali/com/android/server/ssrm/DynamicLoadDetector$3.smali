.class Lcom/android/server/ssrm/DynamicLoadDetector$3;
.super Ljava/lang/Object;
.source "DynamicLoadDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/DynamicLoadDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/DynamicLoadDetector;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/DynamicLoadDetector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/android/server/ssrm/DynamicLoadDetector$3;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 314
    nop

    .line 315
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    .line 316
    .local v0, "thermistor":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v1

    const/16 v2, 0x154

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 322
    .local v1, "isTempSatisfied":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector$3;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    iget-boolean v2, v2, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTempSatisfied:Z

    if-eq v1, v2, :cond_1

    .line 323
    iget-object v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector$3;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    iput-boolean v1, v2, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTempSatisfied:Z

    .line 324
    iget-object v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector$3;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-virtual {v2}, Lcom/android/server/ssrm/DynamicLoadDetector;->scheduleMonitoring()V

    .line 328
    .end local v1    # "isTempSatisfied":Z
    :cond_1
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector$3;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    iget-object v2, v2, Lcom/android/server/ssrm/DynamicLoadDetector;->mTemperatureCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 329
    return-void
.end method
