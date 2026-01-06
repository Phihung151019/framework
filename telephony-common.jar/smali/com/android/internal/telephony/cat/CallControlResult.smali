.class final enum Lcom/android/internal/telephony/cat/CallControlResult;
.super Ljava/lang/Enum;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/CallControlResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/CallControlResult;

.field public static final enum blacklist CALL_CONTROL_ALLOWED_NO_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

.field public static final enum blacklist CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

.field public static final enum blacklist CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

.field public static final enum blacklist CALL_CONTROL_NO_CONTROL:Lcom/android/internal/telephony/cat/CallControlResult;


# instance fields
.field private blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/CallControlResult;
    .locals 4

    .line 191
    sget-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NO_CONTROL:Lcom/android/internal/telephony/cat/CallControlResult;

    sget-object v1, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_NO_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    sget-object v2, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    sget-object v3, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 192
    new-instance v0, Lcom/android/internal/telephony/cat/CallControlResult;

    const-string v1, "CALL_CONTROL_NO_CONTROL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NO_CONTROL:Lcom/android/internal/telephony/cat/CallControlResult;

    .line 193
    new-instance v0, Lcom/android/internal/telephony/cat/CallControlResult;

    const-string v1, "CALL_CONTROL_ALLOWED_NO_MOD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_NO_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    .line 194
    new-instance v0, Lcom/android/internal/telephony/cat/CallControlResult;

    const-string v1, "CALL_CONTROL_NOT_ALLOWED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    .line 195
    new-instance v0, Lcom/android/internal/telephony/cat/CallControlResult;

    const-string v1, "CALL_CONTROL_ALLOWED_WITH_MOD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    .line 191
    invoke-static {}, Lcom/android/internal/telephony/cat/CallControlResult;->$values()[Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->$VALUES:[Lcom/android/internal/telephony/cat/CallControlResult;

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

    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 200
    iput p3, p0, Lcom/android/internal/telephony/cat/CallControlResult;->mValue:I

    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;
    .locals 5

    .line 213
    invoke-static {}, Lcom/android/internal/telephony/cat/CallControlResult;->values()[Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 214
    iget v4, v3, Lcom/android/internal/telephony/cat/CallControlResult;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/CallControlResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 191
    const-class v0, Lcom/android/internal/telephony/cat/CallControlResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/CallControlResult;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/CallControlResult;
    .locals 1

    .line 191
    sget-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->$VALUES:[Lcom/android/internal/telephony/cat/CallControlResult;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/CallControlResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/CallControlResult;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .locals 0

    .line 209
    iget p0, p0, Lcom/android/internal/telephony/cat/CallControlResult;->mValue:I

    return p0
.end method
