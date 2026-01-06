.class final enum Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;
.super Ljava/lang/Enum;
.source "SemCarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemCarrierIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CarrierEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

.field public static final enum blacklist ICC_CHANGED_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

.field public static final enum blacklist INVALID_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

.field public static final enum blacklist PREFER_APN_UPDATE_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

.field public static final enum blacklist SIM_ABSENT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

.field public static final enum blacklist SIM_INIT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

.field public static final enum blacklist SIM_LOAD_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;


# instance fields
.field private blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;
    .locals 6

    .line 411
    sget-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_INIT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    sget-object v1, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_LOAD_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    sget-object v2, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_ABSENT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    sget-object v3, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->ICC_CHANGED_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    sget-object v4, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->PREFER_APN_UPDATE_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    sget-object v5, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->INVALID_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    filled-new-array/range {v0 .. v5}, [Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 413
    new-instance v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const/4 v1, 0x0

    const v2, 0x2e8ec

    const-string v3, "SIM_INIT_EVENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_INIT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 414
    new-instance v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const/4 v1, 0x1

    const v2, 0x2e8ed

    const-string v3, "SIM_LOAD_EVENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_LOAD_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 415
    new-instance v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const v1, 0x2e8ee

    const-string v2, "SIM_ABSENT_EVENT"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_ABSENT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 416
    new-instance v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const-string v1, "ICC_CHANGED_EVENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->ICC_CHANGED_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 417
    new-instance v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const-string v1, "PREFER_APN_UPDATE_EVENT"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->PREFER_APN_UPDATE_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 418
    new-instance v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const/4 v1, 0x5

    const/4 v2, -0x1

    const-string v3, "INVALID_EVENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->INVALID_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 411
    invoke-static {}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->$values()[Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->$VALUES:[Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
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
            "(I)V"
        }
    .end annotation

    .line 421
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 422
    iput p3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->value:I

    return-void
.end method

.method static blacklist from(I)Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;
    .locals 6

    .line 430
    sget-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->INVALID_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 431
    invoke-static {}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->values()[Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 432
    invoke-virtual {v4}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->getValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p0, v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 411
    const-class v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;
    .locals 1

    .line 411
    sget-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->$VALUES:[Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    return-object v0
.end method


# virtual methods
.method blacklist getValue()Ljava/lang/Integer;
    .locals 0

    .line 426
    iget p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
