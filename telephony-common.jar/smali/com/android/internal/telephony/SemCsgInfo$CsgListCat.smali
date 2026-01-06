.class public final enum Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
.super Ljava/lang/Enum;
.source "SemCsgInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemCsgInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CsgListCat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

.field public static final enum blacklist ALLOWED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

.field public static final enum blacklist CONNECTED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

.field public static final enum blacklist OPERATOR:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

.field public static final enum blacklist UNKNOWN:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
    .locals 4

    .line 25
    sget-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    sget-object v1, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->ALLOWED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    sget-object v2, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->OPERATOR:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    sget-object v3, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->CONNECTED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    new-instance v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    const-string v1, "ALLOWED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->ALLOWED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    new-instance v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    const-string v1, "OPERATOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->OPERATOR:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    new-instance v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    const-string v1, "CONNECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->CONNECTED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    .line 25
    invoke-static {}, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->$values()[Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->$VALUES:[Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    const-class v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->$VALUES:[Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    return-object v0
.end method
