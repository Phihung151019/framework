.class final enum Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;
.super Ljava/lang/Enum;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

.field public static final enum blacklist SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

.field public static final enum blacklist SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

.field public static final enum blacklist SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

.field public static final enum blacklist SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

.field public static final enum blacklist SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

.field public static final enum blacklist SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;


# instance fields
.field private blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;
    .locals 6

    .line 158
    sget-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    sget-object v1, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    sget-object v2, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    sget-object v3, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    sget-object v4, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    sget-object v5, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    filled-new-array/range {v0 .. v5}, [Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 159
    new-instance v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    .line 160
    new-instance v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL_WITH_REDIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    .line 161
    new-instance v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    .line 162
    new-instance v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD_WITH_REDIAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    .line 163
    new-instance v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    .line 164
    new-instance v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS_WITH_REDIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->$values()[Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->$VALUES:[Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

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

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    iput p3, p0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->mValue:I

    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;
    .locals 5

    .line 182
    invoke-static {}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->values()[Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 183
    iget v4, v3, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 158
    const-class v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;
    .locals 1

    .line 158
    sget-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->$VALUES:[Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .locals 0

    .line 178
    iget p0, p0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->mValue:I

    return p0
.end method
