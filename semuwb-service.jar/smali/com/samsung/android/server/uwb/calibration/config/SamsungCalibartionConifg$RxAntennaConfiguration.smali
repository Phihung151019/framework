.class public Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$RxAntennaConfiguration;
.super Ljava/lang/Object;
.source "SamsungCalibartionConifg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RxAntennaConfiguration"
.end annotation


# instance fields
.field private final mAntPairs:[B

.field private final mMode:B


# direct methods
.method public constructor <init>(B[B)V
    .locals 0
    .param p1, "rxMode"    # B
    .param p2, "rxAntPairs"    # [B

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-byte p1, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$RxAntennaConfiguration;->mMode:B

    .line 368
    iput-object p2, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$RxAntennaConfiguration;->mAntPairs:[B

    .line 369
    return-void
.end method


# virtual methods
.method public getRxAntMode()B
    .locals 1

    .line 372
    iget-byte v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$RxAntennaConfiguration;->mMode:B

    return v0
.end method

.method public getRxAntPairs()[B
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/SamsungCalibartionConifg$RxAntennaConfiguration;->mAntPairs:[B

    return-object v0
.end method
