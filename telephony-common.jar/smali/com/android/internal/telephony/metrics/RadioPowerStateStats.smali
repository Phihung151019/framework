.class public Lcom/android/internal/telephony/metrics/RadioPowerStateStats;
.super Ljava/lang/Object;
.source "RadioPowerStateStats.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist onRadioStateChanged(I)V
    .locals 1

    const/16 v0, 0x2c9

    .line 36
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/RadioPowerStateStats;->radioPowerStateToProtoEnum(I)I

    move-result p0

    .line 35
    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(II)V

    return-void
.end method

.method private static blacklist radioPowerStateToProtoEnum(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method
