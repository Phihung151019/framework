.class Lcom/samsung/android/mcf/external/BluetoothCallHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/external/BluetoothCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mcf/external/BluetoothCallHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/external/BluetoothCallHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/mcf/external/BluetoothCallHelper;

    .line 324
    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$1;->this$0:Lcom/samsung/android/mcf/external/BluetoothCallHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 327
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    const-string v1, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 331
    .local v1, "bondState":I
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 332
    :cond_0
    const-string v2, "EXTRA_DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "device":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changed bonded device list :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothCallHelper"

    const-string v5, "mBroadcastReceiver"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v3, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$1;->this$0:Lcom/samsung/android/mcf/external/BluetoothCallHelper;

    invoke-static {v3}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->access$000(Lcom/samsung/android/mcf/external/BluetoothCallHelper;)V

    .line 337
    .end local v1    # "bondState":I
    .end local v2    # "device":Ljava/lang/String;
    :cond_1
    return-void
.end method
