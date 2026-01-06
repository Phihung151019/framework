.class public final enum Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
.super Ljava/lang/Enum;
.source "ContextAwareServiceErrors.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;",
        ">;",
        "Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_CONTEXT_PROVIDER_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_LISTENER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_PROPERTY_VALUE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SUB_COLLECTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_UNKNOWN:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    .locals 23

    .line 25
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v3, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v4, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v5, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v6, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v7, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v8, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v9, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v10, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v11, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v12, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v13, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SUB_COLLECTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v14, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v15, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v16, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v17, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v18, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v19, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_PROVIDER_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v20, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v21, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_PROPERTY_VALUE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v22, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    filled-new-array/range {v1 .. v22}, [Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/4 v1, 0x0

    const-string v2, "Success"

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 31
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/4 v1, 0x1

    const-string v2, "ERROR : Unknown"

    const-string v3, "ERROR_UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 34
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/4 v1, 0x2

    const-string v2, "ERROR : not support commend"

    const-string v3, "ERROR_NOT_SUPPORT_CMD"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 37
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/4 v1, 0x3

    const-string v2, "ERROR : Dependent service is null"

    const-string v3, "ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 40
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/4 v1, 0x4

    const-string v2, "ERROR : Dependent service isn\'t registered"

    const-string v3, "ERROR_DEPENDENT_SERVICE_NOT_REGISTERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 44
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/4 v1, 0x5

    const-string v2, "ERROR : Listener isn\'t registered"

    const-string v3, "ERROR_LISTENER_NOT_REGISTERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 47
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/4 v1, 0x6

    const-string v2, "ERROR : Listener is null"

    const-string v3, "ERROR_LISTENER_NULL_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 50
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/4 v1, 0x7

    const-string v2, "ERROR : Binder is null"

    const-string v3, "ERROR_BINDER_NULL_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 53
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0x8

    const-string v2, "ERROR : Looper is null"

    const-string v3, "ERROR_LOOPER_NULL_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 56
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0x9

    const-string v2, "ERROR : Context is null"

    const-string v3, "ERROR_CONTEXT_NULL_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 59
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0xa

    const-string v2, "ERROR : Service handler is null"

    const-string v3, "ERROR_SERVICE_HANDLER_NULL_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 62
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0xb

    const-string v2, "ERROR : Context information is null"

    const-string v3, "ERROR_CONTEXT_INFO_NULL_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 65
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0xc

    const-string v2, "ERROR : Sub-Collection operation is fault"

    const-string v3, "ERROR_SUB_COLLECTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SUB_COLLECTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 68
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0xd

    const-string v2, "ERROR : Bundle is null"

    const-string v3, "ERROR_BUNDLE_NULL_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 71
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0xe

    const-string v2, "Service is fault"

    const-string v3, "ERROR_SERVICE_FAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 74
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0xf

    const-string v2, "ERROR : Version is already set"

    const-string v3, "ERROR_VERSION_SETTING"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 77
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0x10

    const-string v2, "ERROR : Service code is null"

    const-string v3, "ERROR_SERVICE_CODE_NULL_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 80
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0x11

    const-string v2, "ERROR : Service is not running"

    const-string v3, "ERROR_SERVICE_NOT_RUNNING"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 83
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0x12

    const-string v2, "ERROR : Context provider is fault"

    const-string v3, "ERROR_CONTEXT_PROVIDER_FAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_PROVIDER_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 86
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0x13

    const-string v2, "Service count is fault"

    const-string v3, "ERROR_SERVICE_COUNT_FAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 89
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0x14

    const-string v2, "Property value is fault"

    const-string v3, "ERROR_PROPERTY_VALUE_FAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_PROPERTY_VALUE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 92
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v1, 0x15

    const-string v2, "ERROR : Time out"

    const-string v3, "ERROR_TIME_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 25
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->$values()[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->$VALUES:[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

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

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput-object p3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->message:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 6
    .param p0, "code"    # I

    .line 133
    const-string v0, ""

    .line 135
    .local v0, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->values()[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 136
    .local v4, "i":Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 137
    iget-object v0, v4, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->message:Ljava/lang/String;

    .line 138
    goto :goto_1

    .line 135
    .end local v4    # "i":Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    const-string v1, "Message code is fault"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 146
    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
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
    const-class v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->$VALUES:[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->message:Ljava/lang/String;

    return-object v0
.end method

.method public notifyFatalError()V
    .locals 0

    .line 159
    return-void
.end method
