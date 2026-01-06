.class public final Landroidx/car/app/CarToast;
.super Ljava/lang/Object;
.source "CarToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/CarToast$Duration;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I


# instance fields
.field private final mCarContext:Landroidx/car/app/CarContext;

.field private mDuration:I

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroidx/car/app/CarContext;)V
    .locals 1
    .param p1, "carContext"    # Landroidx/car/app/CarContext;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/CarContext;

    iput-object v0, p0, Landroidx/car/app/CarToast;->mCarContext:Landroidx/car/app/CarContext;

    .line 70
    return-void
.end method

.method public static makeText(Landroidx/car/app/CarContext;II)Landroidx/car/app/CarToast;
    .locals 2
    .param p0, "carContext"    # Landroidx/car/app/CarContext;
    .param p1, "textResId"    # I
    .param p2, "duration"    # I

    .line 84
    nop

    .line 85
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/CarContext;

    .line 86
    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/car/app/CarContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_0
    invoke-static {v0, v1, p2}, Landroidx/car/app/CarToast;->makeText(Landroidx/car/app/CarContext;Ljava/lang/CharSequence;I)Landroidx/car/app/CarToast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroidx/car/app/CarContext;Ljava/lang/CharSequence;I)Landroidx/car/app/CarToast;
    .locals 2
    .param p0, "carContext"    # Landroidx/car/app/CarContext;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .line 102
    new-instance v0, Landroidx/car/app/CarToast;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/CarContext;

    invoke-direct {v0, v1}, Landroidx/car/app/CarToast;-><init>(Landroidx/car/app/CarContext;)V

    .line 103
    .local v0, "carToast":Landroidx/car/app/CarToast;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/car/app/CarToast;->mText:Ljava/lang/CharSequence;

    .line 104
    iput p2, v0, Landroidx/car/app/CarToast;->mDuration:I

    .line 105
    return-object v0
.end method


# virtual methods
.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 134
    iput p1, p0, Landroidx/car/app/CarToast;->mDuration:I

    .line 135
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "textResId"    # I

    .line 115
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/car/app/CarToast;->mCarContext:Landroidx/car/app/CarContext;

    invoke-virtual {v0, p1}, Landroidx/car/app/CarContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/car/app/CarToast;->mText:Ljava/lang/CharSequence;

    .line 116
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 124
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/car/app/CarToast;->mText:Ljava/lang/CharSequence;

    .line 125
    return-void
.end method

.method public show()V
    .locals 3

    .line 143
    iget-object v0, p0, Landroidx/car/app/CarToast;->mText:Ljava/lang/CharSequence;

    .line 144
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Landroidx/car/app/CarToast;->mCarContext:Landroidx/car/app/CarContext;

    const-class v2, Landroidx/car/app/AppManager;

    invoke-virtual {v1, v2}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/AppManager;

    iget v2, p0, Landroidx/car/app/CarToast;->mDuration:I

    invoke-virtual {v1, v0, v2}, Landroidx/car/app/AppManager;->showToast(Ljava/lang/CharSequence;I)V

    .line 149
    return-void

    .line 145
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setText must have been called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
