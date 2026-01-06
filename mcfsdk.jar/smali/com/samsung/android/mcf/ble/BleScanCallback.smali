.class public abstract Lcom/samsung/android/mcf/ble/BleScanCallback;
.super Ljava/lang/Object;
.source "BleScanCallback.java"


# static fields
.field static final NO_ERROR:I = 0x0

.field public static final SCAN_FAILED_ALREADY_STARTED:I = 0x1

.field public static final SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:I = 0x2

.field public static final SCAN_FAILED_FEATURE_UNSUPPORTED:I = 0x4

.field public static final SCAN_FAILED_INTERNAL_ERROR:I = 0x3

.field public static final SCAN_STOPPED_BY_TIMEOUT:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .line 65
    return-void
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 0
    .param p1, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 56
    return-void
.end method
