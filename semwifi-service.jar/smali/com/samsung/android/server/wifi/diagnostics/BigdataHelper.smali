.class public Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;,
        Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;,
        Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;,
        Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;,
        Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;
    }
.end annotation


# static fields
.field static final ARGS_DATA_STR:Ljava/lang/String; = "data"

.field static final ARGS_FEATURE_NAME:Ljava/lang/String; = "feature"

.field private static final BSSID_DEFAULT:Ljava/lang/String; = "00:00:00:00:00:00"

.field static final IP_DEFAULT:Ljava/lang/String; = "0.0.0.0"

.field private static final OUI_DEFAULT:Ljava/lang/String; = "00:00:00"

.field static final PDC1_FEATURE_NAME:Ljava/lang/String; = "PDC1"

.field static final PDC2_FEATURE_NAME:Ljava/lang/String; = "PDC2"

.field static final PDC3_FEATURE_NAME:Ljava/lang/String; = "PDC3"

.field static final PDC4_FEATURE_NAME:Ljava/lang/String; = "PDC4"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "\\s+"

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    return-object p1
.end method
