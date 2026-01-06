.class Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository$File;
.super Ljava/lang/Object;
.source "CalibrationConfigRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/calibration/CalibrationConfigRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "File"
.end annotation


# static fields
.field private static final EFS_CONFIG_FILE:Ljava/lang/String; = "/efs/sec_efs/uwb_factory/AOA_CAL_DATA"

.field private static final FOLD_MODE_CONFIG_FILE:Ljava/lang/String; = "/system/etc/libuwb-cal_folded.conf"

.field private static final SYSTEM_CONFIG_FILE:Ljava/lang/String; = "/system/etc/libuwb-cal.conf"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
