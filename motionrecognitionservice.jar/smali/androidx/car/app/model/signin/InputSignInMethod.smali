.class public final Landroidx/car/app/model/signin/InputSignInMethod;
.super Ljava/lang/Object;
.source "InputSignInMethod.java"

# interfaces
.implements Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x2
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/signin/InputSignInMethod$Builder;,
        Landroidx/car/app/model/signin/InputSignInMethod$KeyboardType;,
        Landroidx/car/app/model/signin/InputSignInMethod$InputType;
    }
.end annotation


# static fields
.field public static final INPUT_TYPE_DEFAULT:I = 0x1

.field public static final INPUT_TYPE_PASSWORD:I = 0x2

.field public static final KEYBOARD_DEFAULT:I = 0x1

.field public static final KEYBOARD_EMAIL:I = 0x2

.field public static final KEYBOARD_NUMBER:I = 0x4

.field public static final KEYBOARD_PHONE:I = 0x3


# instance fields
.field private final mDefaultValue:Landroidx/car/app/model/CarText;

.field private final mErrorMessage:Landroidx/car/app/model/CarText;

.field private final mHint:Landroidx/car/app/model/CarText;

.field private final mInputCallbackDelegate:Landroidx/car/app/model/InputCallbackDelegate;

.field private final mInputType:I

.field private final mKeyboardType:I

.field private final mShowKeyboardByDefault:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mHint:Landroidx/car/app/model/CarText;

    .line 241
    iput-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mDefaultValue:Landroidx/car/app/model/CarText;

    .line 242
    const/4 v1, 0x1

    iput v1, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mInputType:I

    .line 243
    iput-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mErrorMessage:Landroidx/car/app/model/CarText;

    .line 244
    iput v1, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mKeyboardType:I

    .line 245
    iput-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mInputCallbackDelegate:Landroidx/car/app/model/InputCallbackDelegate;

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mShowKeyboardByDefault:Z

    .line 247
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/signin/InputSignInMethod$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/signin/InputSignInMethod$Builder;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iget-object v0, p1, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mHint:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mHint:Landroidx/car/app/model/CarText;

    .line 230
    iget-object v0, p1, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mDefaultValue:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mDefaultValue:Landroidx/car/app/model/CarText;

    .line 231
    iget v0, p1, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mInputType:I

    iput v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mInputType:I

    .line 232
    iget-object v0, p1, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mErrorMessage:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mErrorMessage:Landroidx/car/app/model/CarText;

    .line 233
    iget v0, p1, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mKeyboardType:I

    iput v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mKeyboardType:I

    .line 234
    iget-object v0, p1, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mInputCallbackDelegate:Landroidx/car/app/model/InputCallbackDelegate;

    iput-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mInputCallbackDelegate:Landroidx/car/app/model/InputCallbackDelegate;

    .line 235
    iget-boolean v0, p1, Landroidx/car/app/model/signin/InputSignInMethod$Builder;->mShowKeyboardByDefault:Z

    iput-boolean v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mShowKeyboardByDefault:Z

    .line 236
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 205
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 206
    return v0

    .line 209
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/signin/InputSignInMethod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 210
    return v2

    .line 213
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/signin/InputSignInMethod;

    .line 214
    .local v1, "that":Landroidx/car/app/model/signin/InputSignInMethod;
    iget v3, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mInputType:I

    iget v4, v1, Landroidx/car/app/model/signin/InputSignInMethod;->mInputType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mKeyboardType:I

    iget v4, v1, Landroidx/car/app/model/signin/InputSignInMethod;->mKeyboardType:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mShowKeyboardByDefault:Z

    iget-boolean v4, v1, Landroidx/car/app/model/signin/InputSignInMethod;->mShowKeyboardByDefault:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mHint:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/signin/InputSignInMethod;->mHint:Landroidx/car/app/model/CarText;

    .line 217
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mDefaultValue:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/signin/InputSignInMethod;->mDefaultValue:Landroidx/car/app/model/CarText;

    .line 218
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mErrorMessage:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/signin/InputSignInMethod;->mErrorMessage:Landroidx/car/app/model/CarText;

    .line 219
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 214
    :goto_0
    return v0
.end method

.method public getDefaultValue()Landroidx/car/app/model/CarText;
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mDefaultValue:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getErrorMessage()Landroidx/car/app/model/CarText;
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mErrorMessage:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getHint()Landroidx/car/app/model/CarText;
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mHint:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getInputCallbackDelegate()Landroidx/car/app/model/InputCallbackDelegate;
    .locals 1

    .line 185
    iget-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mInputCallbackDelegate:Landroidx/car/app/model/InputCallbackDelegate;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/InputCallbackDelegate;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .line 153
    iget v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mInputType:I

    return v0
.end method

.method public getKeyboardType()I
    .locals 1

    .line 175
    iget v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mKeyboardType:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 224
    iget-object v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mHint:Landroidx/car/app/model/CarText;

    iget-object v1, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mDefaultValue:Landroidx/car/app/model/CarText;

    iget v2, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mInputType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mErrorMessage:Landroidx/car/app/model/CarText;

    iget v4, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mKeyboardType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mShowKeyboardByDefault:Z

    .line 225
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 224
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isShowKeyboardByDefault()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mShowKeyboardByDefault:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[inputType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mInputType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyboardType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/signin/InputSignInMethod;->mKeyboardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
