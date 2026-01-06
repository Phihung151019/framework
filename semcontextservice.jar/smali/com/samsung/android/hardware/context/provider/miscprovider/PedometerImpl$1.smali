.class Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$1;
.super Landroid/os/Handler;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->-$$Nest$fgetmPedometer(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;->setLoggingMode(Z)V

    goto :goto_0

    .line 66
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->-$$Nest$fgetmPedometer(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;->setLoggingMode(Z)V

    .line 69
    :cond_1
    :goto_0
    return-void
.end method
