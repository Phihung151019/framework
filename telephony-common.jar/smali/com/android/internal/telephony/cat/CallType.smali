.class final enum Lcom/android/internal/telephony/cat/CallType;
.super Ljava/lang/Enum;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/CallType;

.field public static final enum blacklist CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/cat/CallType;

.field public static final enum blacklist CALL_TYPE_MO_SS:Lcom/android/internal/telephony/cat/CallType;

.field public static final enum blacklist CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/cat/CallType;

.field public static final enum blacklist CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

.field public static final enum blacklist CALL_TYPE_PDP_CTXT:Lcom/android/internal/telephony/cat/CallType;


# instance fields
.field private blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/CallType;
    .locals 5

    .line 223
    sget-object v0, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    sget-object v1, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/cat/CallType;

    sget-object v2, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/cat/CallType;

    sget-object v3, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/cat/CallType;

    sget-object v4, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_PDP_CTXT:Lcom/android/internal/telephony/cat/CallType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/telephony/cat/CallType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 224
    new-instance v0, Lcom/android/internal/telephony/cat/CallType;

    const-string v1, "CALL_TYPE_MO_VOICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    .line 225
    new-instance v0, Lcom/android/internal/telephony/cat/CallType;

    const-string v1, "CALL_TYPE_MO_SMS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/cat/CallType;

    .line 226
    new-instance v0, Lcom/android/internal/telephony/cat/CallType;

    const-string v1, "CALL_TYPE_MO_SS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/cat/CallType;

    .line 227
    new-instance v0, Lcom/android/internal/telephony/cat/CallType;

    const-string v1, "CALL_TYPE_MO_USSD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/cat/CallType;

    .line 228
    new-instance v0, Lcom/android/internal/telephony/cat/CallType;

    const-string v1, "CALL_TYPE_PDP_CTXT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_PDP_CTXT:Lcom/android/internal/telephony/cat/CallType;

    .line 223
    invoke-static {}, Lcom/android/internal/telephony/cat/CallType;->$values()[Lcom/android/internal/telephony/cat/CallType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/CallType;->$VALUES:[Lcom/android/internal/telephony/cat/CallType;

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

    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 233
    iput p3, p0, Lcom/android/internal/telephony/cat/CallType;->mValue:I

    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/telephony/cat/CallType;
    .locals 5

    .line 246
    invoke-static {}, Lcom/android/internal/telephony/cat/CallType;->values()[Lcom/android/internal/telephony/cat/CallType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 247
    iget v4, v3, Lcom/android/internal/telephony/cat/CallType;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/CallType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 223
    const-class v0, Lcom/android/internal/telephony/cat/CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/CallType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/CallType;
    .locals 1

    .line 223
    sget-object v0, Lcom/android/internal/telephony/cat/CallType;->$VALUES:[Lcom/android/internal/telephony/cat/CallType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/CallType;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .locals 0

    .line 242
    iget p0, p0, Lcom/android/internal/telephony/cat/CallType;->mValue:I

    return p0
.end method
