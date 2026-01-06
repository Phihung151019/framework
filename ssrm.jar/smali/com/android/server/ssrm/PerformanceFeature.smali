.class public Lcom/android/server/ssrm/PerformanceFeature;
.super Ljava/lang/Object;
.source "PerformanceFeature.java"


# static fields
.field public static CHIP_SM8450:Z

.field public static CHIP_SM8475:Z

.field public static disableGpisSkip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/PerformanceFeature;->CHIP_SM8450:Z

    .line 23
    sput-boolean v0, Lcom/android/server/ssrm/PerformanceFeature;->CHIP_SM8475:Z

    .line 24
    sput-boolean v0, Lcom/android/server/ssrm/PerformanceFeature;->disableGpisSkip:Z

    .line 28
    :try_start_0
    const-string v1, "ro.hardware.chipname"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "chipname":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 31
    const-string v2, "ro.soc.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 33
    :cond_0
    const-string v2, "SM8450"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string v2, "taro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/android/server/ssrm/PerformanceFeature;->CHIP_SM8450:Z

    .line 34
    const-string v2, "SM8475"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/ssrm/PerformanceFeature;->CHIP_SM8475:Z

    .line 36
    const-string v2, "6:2"

    const-string v4, "sys.perf.hmp"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    sput-boolean v0, Lcom/android/server/ssrm/PerformanceFeature;->disableGpisSkip:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "chipname":Ljava/lang/String;
    goto :goto_3

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
