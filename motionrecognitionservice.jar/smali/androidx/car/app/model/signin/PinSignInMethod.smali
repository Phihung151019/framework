.class public final Landroidx/car/app/model/signin/PinSignInMethod;
.super Ljava/lang/Object;
.source "PinSignInMethod.java"

# interfaces
.implements Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x2
.end annotation


# static fields
.field private static final MAX_PIN_LENGTH:I = 0xc


# instance fields
.field private final mPinCode:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/signin/PinSignInMethod;->mPinCode:Landroidx/car/app/model/CarText;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "pinCode"    # Ljava/lang/CharSequence;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 60
    .local v0, "pinLength":I
    if-eqz v0, :cond_1

    .line 63
    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    .line 67
    invoke-static {p1}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/app/model/signin/PinSignInMethod;->mPinCode:Landroidx/car/app/model/CarText;

    .line 68
    return-void

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PIN must not be longer than 12 characters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PIN must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 78
    if-ne p0, p1, :cond_0

    .line 79
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_0
    instance-of v0, p1, Landroidx/car/app/model/signin/PinSignInMethod;

    if-nez v0, :cond_1

    .line 83
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/model/signin/PinSignInMethod;

    .line 87
    .local v0, "that":Landroidx/car/app/model/signin/PinSignInMethod;
    iget-object v1, p0, Landroidx/car/app/model/signin/PinSignInMethod;->mPinCode:Landroidx/car/app/model/CarText;

    iget-object v2, v0, Landroidx/car/app/model/signin/PinSignInMethod;->mPinCode:Landroidx/car/app/model/CarText;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getPinCode()Landroidx/car/app/model/CarText;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/car/app/model/signin/PinSignInMethod;->mPinCode:Landroidx/car/app/model/CarText;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/car/app/model/signin/PinSignInMethod;->mPinCode:Landroidx/car/app/model/CarText;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
