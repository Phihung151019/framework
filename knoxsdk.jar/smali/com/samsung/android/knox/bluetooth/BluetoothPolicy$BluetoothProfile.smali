.class public Lcom/samsung/android/knox/bluetooth/BluetoothPolicy$BluetoothProfile;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothProfile"
.end annotation


# static fields
.field public static final greylist BLUETOOTH_A2DP_PROFILE:I = 0x8

.field public static final greylist BLUETOOTH_AVRCP_PROFILE:I = 0x10

.field public static final greylist BLUETOOTH_BPP_PROFILE:I = 0x200

.field public static final greylist BLUETOOTH_DUN_PROFILE:I = 0x20

.field public static final greylist BLUETOOTH_FTP_PROFILE:I = 0x40

.field public static final greylist BLUETOOTH_HFP_PROFILE:I = 0x2

.field public static final greylist BLUETOOTH_HSP_PROFILE:I = 0x1

.field public static final greylist BLUETOOTH_PBAP_PROFILE:I = 0x4

.field public static final greylist BLUETOOTH_SAP_PROFILE:I = 0x100

.field public static final greylist BLUETOOTH_SPP_PROFILE:I = 0x80


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
