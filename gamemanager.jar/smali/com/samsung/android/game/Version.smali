.class public Lcom/samsung/android/game/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final SERVICE_VERSION_MAJOR:I = 0x96

.field private static final SERVICE_VERSION_MINOR:I = 0xf

.field public static final SERVICE_VERSION_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 38
    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d.%03d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/game/Version;->SERVICE_VERSION_NAME:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
