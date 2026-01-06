.class final enum Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;
.super Ljava/lang/Enum;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CdmaRatOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

.field public static final enum blacklist MOBILE_RAT_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

.field public static final enum blacklist NO_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

.field public static final enum blacklist RAT_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;
    .locals 3

    .line 6698
    sget-object v0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->NO_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    sget-object v1, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->RAT_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    sget-object v2, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->MOBILE_RAT_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 6700
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    const-string v1, "NO_CDMA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->NO_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    .line 6702
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    const-string v1, "RAT_CDMA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->RAT_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    .line 6704
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    const-string v1, "MOBILE_RAT_CDMA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->MOBILE_RAT_CDMA:Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    .line 6698
    invoke-static {}, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->$values()[Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->$VALUES:[Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6698
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6698
    const-class v0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;
    .locals 1

    .line 6698
    sget-object v0, Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->$VALUES:[Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/DataNetworkController$CdmaRatOrigin;

    return-object v0
.end method
