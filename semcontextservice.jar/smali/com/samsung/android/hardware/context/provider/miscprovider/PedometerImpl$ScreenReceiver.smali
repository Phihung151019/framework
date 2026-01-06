.class Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;-><init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 319
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->-$$Nest$fgetmIsStarted(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$ScreenReceiver;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    :cond_1
    :goto_0
    return-void
.end method
