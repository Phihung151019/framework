.class public final Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;
.super Ljava/lang/Object;
.source "BleAdvertiseSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final INFINITE_TIMEOUT:I = 0x0

.field public static final INTERVAL_HIGH:I = 0x2

.field public static final INTERVAL_LOW:I = 0x0

.field public static final INTERVAL_MEDIUM:I = 0x1

.field private static final KEY_BLE_ADV_CONNECTABLE:Ljava/lang/String; = "ble_AdvConn"

.field private static final KEY_BLE_ADV_INTERVAL:Ljava/lang/String; = "ble_AdvInterval"

.field private static final KEY_BLE_ADV_TX_POWER:Ljava/lang/String; = "ble_AdvTxPower"

.field private static final KEY_CUSTOM_TX_POWER:Ljava/lang/String; = "customTxPower"

.field private static final KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final LONG_TIMEOUT:I = 0x36ee80

.field public static final MAX_CUSTOM_TX_POWER:I = 0xc

.field public static final MAX_TIMEOUT:I = 0x5265c00

.field public static final MIN_CUSTOM_TX_POWER:I = -0x32

.field public static final TX_POWER_HIGH:I = 0x3

.field public static final TX_POWER_LOW:I = 0x1

.field public static final TX_POWER_MEDIUM:I = 0x2

.field public static final TX_POWER_ULTRA_LOW:I


# instance fields
.field private final mCustomTxPower:I

.field private final mInterval:I

.field private final mIsConnectable:Z

.field private final mTimeout:I

.field private final mTxPowerLevel:I


# direct methods
.method private constructor <init>(IIZII)V
    .locals 0
    .param p1, "interval"    # I
    .param p2, "txPowerLevel"    # I
    .param p3, "isConnectable"    # Z
    .param p4, "timeout"    # I
    .param p5, "customTxPower"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mInterval:I

    .line 123
    iput p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTxPowerLevel:I

    .line 124
    iput-boolean p3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mIsConnectable:Z

    .line 125
    iput p4, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTimeout:I

    .line 126
    iput p5, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mCustomTxPower:I

    .line 127
    return-void
.end method

.method synthetic constructor <init>(IIZIILcom/samsung/android/mcf/ble/BleAdvertiseSettings$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$1;

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;-><init>(IIZII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "ble_AdvInterval"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mInterval:I

    .line 134
    const-string v0, "ble_AdvTxPower"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTxPowerLevel:I

    .line 135
    const-string v0, "ble_AdvConn"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mIsConnectable:Z

    .line 136
    const-string v0, "timeout"

    const/16 v2, 0x7530

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTimeout:I

    .line 137
    const-string v0, "customTxPower"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mCustomTxPower:I

    .line 138
    return-void
.end method


# virtual methods
.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "bd"    # Landroid/os/Bundle;

    .line 144
    move-object v0, p1

    .line 145
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 148
    :cond_0
    const-string v1, "ble_AdvInterval"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    const-string v1, "ble_AdvTxPower"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTxPowerLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string v1, "ble_AdvConn"

    iget-boolean v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mIsConnectable:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    const-string v1, "timeout"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTimeout:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    const-string v1, "customTxPower"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mCustomTxPower:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    return-object v0
.end method

.method public getCustomTxPower()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mCustomTxPower:I

    return v0
.end method

.method public getInterval()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mInterval:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTimeout:I

    return v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTxPowerLevel:I

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mIsConnectable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleAdvertiseSettings{interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TxPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isConnectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mIsConnectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customTxPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mCustomTxPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
