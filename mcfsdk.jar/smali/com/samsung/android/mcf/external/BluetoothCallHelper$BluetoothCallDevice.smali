.class public Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;
.super Ljava/lang/Object;
.source "BluetoothCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/external/BluetoothCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothCallDevice"
.end annotation


# instance fields
.field private bleScanAddress:Ljava/lang/String;

.field private bluetoothDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "bleScanAddress"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->bleScanAddress:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 73
    return-void
.end method


# virtual methods
.method public getBleScanAddress()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->bleScanAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method
