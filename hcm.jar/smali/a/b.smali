.class public La/b;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static final a:Ljava/lang/String; = "b"

.field private static b:La/b; = null

.field private static c:Ljava/lang/String; = "0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sput-object p0, La/b;->c:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static b()La/b;
    .locals 1

    .line 1
    sget-object v0, La/b;->b:La/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, La/b;

    .line 6
    .line 7
    invoke-direct {v0}, La/b;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, La/b;->b:La/b;

    .line 11
    .line 12
    :cond_0
    sget-object v0, La/b;->b:La/b;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1
    sget-object p0, La/b;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method
