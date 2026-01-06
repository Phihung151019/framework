.class public final Landroidx/car/app/model/signin/InputSignInMethod$Builder;
.super Ljava/lang/Object;
.source "InputSignInMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/signin/InputSignInMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mDefaultValue:Landroidx/car/app/model/CarText;

.field mErrorMessage:Landroidx/car/app/model/CarText;

.field mHint:Landroidx/car/app/model/CarText;

.field final mInputCallbackDelegate:Landroidx/car/app/model/InputCallbackDelegate;

.field mInputType:I

.field mKeyboardType:I

.field mShowKeyboardByDefault:Z


# direct methods
.method public constructor <init>(Landroidx/car/app/model/InputCallback;)V
    .locals 1
    .param p1, "listener"    # Landroidx/car/app/model/InputCallback;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    const/4 v0, 0x1

    iput v0, p0, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mInputType:I

    .line 260
    iput v0, p0, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mKeyboardType:I

    .line 381
    nop

    .line 382
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/InputCallback;

    .line 381
    invoke-static {v0}, Landroidx/car/app/model/InputCallbackDelegateImpl;->create(Landroidx/car/app/model/InputCallback;)Landroidx/car/app/model/InputCallbackDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mInputCallbackDelegate:Landroidx/car/app/model/InputCallbackDelegate;

    .line 383
    return-void
.end method

.method private static validateInputType(I)I
    .locals 3
    .param p0, "inputType"    # I

    .line 398
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_1
    :goto_0
    return p0
.end method

.method private static validateKeyboardType(I)I
    .locals 3
    .param p0, "keyboardType"    # I

    .line 387
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keyboard type is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public build()Landroidx/car/app/model/signin/InputSignInMethod;
    .locals 1

    .line 367
    new-instance v0, Landroidx/car/app/model/signin/InputSignInMethod;

    invoke-direct {v0, p0}, Landroidx/car/app/model/signin/InputSignInMethod;-><init>(Landroidx/car/app/model/signin/InputSignInMethod$Builder;)V

    return-object v0
.end method

.method public setDefaultValue(Ljava/lang/String;)Landroidx/car/app/model/signin/InputSignInMethod$Builder;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 293
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mDefaultValue:Landroidx/car/app/model/CarText;

    .line 294
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/CharSequence;)Landroidx/car/app/model/signin/InputSignInMethod$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 330
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mErrorMessage:Landroidx/car/app/model/CarText;

    .line 331
    return-object p0
.end method

.method public setHint(Ljava/lang/CharSequence;)Landroidx/car/app/model/signin/InputSignInMethod$Builder;
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 275
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mHint:Landroidx/car/app/model/CarText;

    .line 276
    return-object p0
.end method

.method public setInputType(I)Landroidx/car/app/model/signin/InputSignInMethod$Builder;
    .locals 1
    .param p1, "inputType"    # I

    .line 309
    invoke-static {p1}, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->validateInputType(I)I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mInputType:I

    .line 310
    return-object p0
.end method

.method public setKeyboardType(I)Landroidx/car/app/model/signin/InputSignInMethod$Builder;
    .locals 1
    .param p1, "keyboardType"    # I

    .line 347
    invoke-static {p1}, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->validateKeyboardType(I)I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mKeyboardType:I

    .line 348
    return-object p0
.end method

.method public setShowKeyboardByDefault(Z)Landroidx/car/app/model/signin/InputSignInMethod$Builder;
    .locals 0
    .param p1, "showKeyboardByDefault"    # Z

    .line 358
    iput-boolean p1, p0, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mShowKeyboardByDefault:Z

    .line 359
    return-object p0
.end method
