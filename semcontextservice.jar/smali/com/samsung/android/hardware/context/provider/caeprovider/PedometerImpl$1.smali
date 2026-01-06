.class Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl$1;
.super Lcom/samsung/android/hardware/context/util/RestoreManager;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/RestoreManager;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedExceptionKill()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->remove()V

    .line 92
    return-void
.end method
