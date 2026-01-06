.class public final Landroidx/car/app/FailureResponse;
.super Ljava/lang/Object;
.source "FailureResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/FailureResponse$ErrorType;
    }
.end annotation


# static fields
.field public static final BUNDLER_EXCEPTION:I = 0x1

.field public static final ILLEGAL_STATE_EXCEPTION:I = 0x2

.field public static final INVALID_PARAMETER_EXCEPTION:I = 0x3

.field public static final REMOTE_EXCEPTION:I = 0x6

.field public static final RUNTIME_EXCEPTION:I = 0x5

.field public static final SECURITY_EXCEPTION:I = 0x4

.field public static final UNKNOWN_ERROR:I


# instance fields
.field private final mErrorType:I

.field private final mStackTrace:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/FailureResponse;->mStackTrace:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/FailureResponse;->mStackTrace:Ljava/lang/String;

    .line 86
    instance-of v0, p1, Landroidx/car/app/serialization/BundlerException;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    goto :goto_0

    .line 88
    :cond_0
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_1

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    goto :goto_0

    .line 90
    :cond_1
    instance-of v0, p1, Ljava/security/InvalidParameterException;

    if-eqz v0, :cond_2

    .line 91
    const/4 v0, 0x3

    iput v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    goto :goto_0

    .line 92
    :cond_2
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_3

    .line 93
    const/4 v0, 0x4

    iput v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    goto :goto_0

    .line 94
    :cond_3
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_4

    .line 95
    const/4 v0, 0x5

    iput v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    goto :goto_0

    .line 96
    :cond_4
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_5

    .line 97
    const/4 v0, 0x6

    iput v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    goto :goto_0

    .line 99
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    .line 101
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 128
    instance-of v0, p1, Landroidx/car/app/FailureResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 129
    return v1

    .line 131
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/car/app/FailureResponse;

    .line 133
    .local v0, "other":Landroidx/car/app/FailureResponse;
    iget v2, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    iget v3, v0, Landroidx/car/app/FailureResponse;->mErrorType:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroidx/car/app/FailureResponse;->mStackTrace:Ljava/lang/String;

    iget-object v3, v0, Landroidx/car/app/FailureResponse;->mStackTrace:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getErrorType()I
    .locals 1

    .line 118
    iget v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    return v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/car/app/FailureResponse;->mStackTrace:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 123
    iget v0, p0, Landroidx/car/app/FailureResponse;->mErrorType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/FailureResponse;->mStackTrace:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
