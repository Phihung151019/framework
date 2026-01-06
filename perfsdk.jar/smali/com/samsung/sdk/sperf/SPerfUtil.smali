.class Lcom/samsung/sdk/sperf/SPerfUtil;
.super Ljava/lang/Object;
.source "SPerfUtil.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PERFSDK"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sdk/sperf/SPerfUtil;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 10
    sget-boolean v0, Lcom/samsung/sdk/sperf/SPerfUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 11
    const-string v0, "PERFSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    return-void
.end method

.method public static logAlways(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 16
    const-string v0, "PERFSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "bool"    # Z

    .line 20
    sput-boolean p0, Lcom/samsung/sdk/sperf/SPerfUtil;->DEBUG:Z

    .line 21
    return-void
.end method
