.class Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$DeviceInventoryWrapperImpl;
.super Ljava/lang/Object;
.source "SemTelephonyKnoxHelperImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceInventoryWrapperImpl"
.end annotation


# instance fields
.field blacklist deviceInfo:Landroid/sec/enterprise/DeviceInventory;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$DeviceInventoryWrapperImpl;->deviceInfo:Landroid/sec/enterprise/DeviceInventory;

    .line 293
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$DeviceInventoryWrapperImpl;->deviceInfo:Landroid/sec/enterprise/DeviceInventory;

    return-void
.end method


# virtual methods
.method public blacklist addCallsCount(Ljava/lang/String;)V
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$DeviceInventoryWrapperImpl;->deviceInfo:Landroid/sec/enterprise/DeviceInventory;

    invoke-virtual {p0, p1}, Landroid/sec/enterprise/DeviceInventory;->addCallsCount(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist isCallingCaptureEnabled()Z
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$DeviceInventoryWrapperImpl;->deviceInfo:Landroid/sec/enterprise/DeviceInventory;

    invoke-virtual {p0}, Landroid/sec/enterprise/DeviceInventory;->isCallingCaptureEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$DeviceInventoryWrapperImpl;->deviceInfo:Landroid/sec/enterprise/DeviceInventory;

    invoke-virtual/range {p0 .. p5}, Landroid/sec/enterprise/DeviceInventory;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
