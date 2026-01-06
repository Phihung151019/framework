.class Lcom/samsung/android/hardware/context/provider/caeprovider/StepLevelMonitorImpl$1;
.super Lcom/samsung/android/hardware/context/util/RestoreManager;
.source "StepLevelMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/context/provider/caeprovider/StepLevelMonitorImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/StepLevelMonitorImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/provider/caeprovider/StepLevelMonitorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/provider/caeprovider/StepLevelMonitorImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/StepLevelMonitorImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/StepLevelMonitorImpl;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/RestoreManager;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedExceptionKill()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/StepLevelMonitorImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/StepLevelMonitorImpl;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/caeprovider/StepLevelMonitorImpl;->remove()V

    .line 57
    return-void
.end method
