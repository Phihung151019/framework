.class public final enum Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
.super Ljava/lang/Enum;
.source "AndroidProviderErrors.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;",
        ">;",
        "Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

.field public static final enum ERROR_UNKNOWN:Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

.field public static final enum SUCCESS:Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    .locals 2

    .line 25
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    filled-new-array {v0, v1}, [Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    const/4 v1, 0x0

    const-string v2, "Success"

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    .line 31
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    const/4 v1, 0x1

    const-string v2, "ERROR : Unknown"

    const-string v3, "ERROR_UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    .line 25
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->$values()[Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
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

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->message:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 6
    .param p0, "code"    # I

    .line 72
    const-string v0, ""

    .line 74
    .local v0, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->values()[Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 75
    .local v4, "i":Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 76
    iget-object v0, v4, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->message:Ljava/lang/String;

    .line 77
    goto :goto_1

    .line 74
    .end local v4    # "i":Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    const-string v1, "Message code is fault"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 85
    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->message:Ljava/lang/String;

    return-object v0
.end method

.method public notifyFatalError()V
    .locals 0

    .line 98
    return-void
.end method
