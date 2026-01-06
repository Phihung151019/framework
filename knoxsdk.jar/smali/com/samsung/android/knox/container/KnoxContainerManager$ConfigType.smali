.class public final enum Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;
.super Ljava/lang/Enum;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/container/KnoxContainerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum greylist BBC:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum greylist KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum greylist LAUNCHER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum greylist LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum greylist SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;


# instance fields
.field private final greylist mTypeString:Ljava/lang/String;


# direct methods
.method public static synthetic greylist $values()[Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    sget-object v1, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    sget-object v2, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    sget-object v3, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    sget-object v4, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    const/4 v1, 0x0

    const-string v2, "lightweight"

    const-string v3, "LIGHTWEIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    new-instance v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    const/4 v1, 0x1

    const-string v2, "kiosk"

    const-string v3, "KIOSK"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    new-instance v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    const/4 v1, 0x2

    const-string v2, "launcher"

    const-string v3, "LAUNCHER"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    new-instance v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    const/4 v1, 0x3

    const-string v2, "bbc"

    const-string v3, "BBC"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    new-instance v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    const/4 v1, 0x4

    const-string v2, "securefolder"

    const-string v3, "SECUREFOLDER"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->$values()[Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->$VALUES:[Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->mTypeString:Ljava/lang/String;

    return-void
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    return-object p0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->$VALUES:[Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    return-object v0
.end method


# virtual methods
.method public greylist getType(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->values()[Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget-object v3, v2, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->mTypeString:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->mTypeString:Ljava/lang/String;

    return-object p0
.end method
