.class public final Landroidx/car/app/model/Alert$Builder;
.super Ljava/lang/Object;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field mCallbackDelegate:Landroidx/car/app/model/AlertCallbackDelegate;

.field mDuration:J

.field mIcon:Landroidx/car/app/model/CarIcon;

.field mId:I

.field mSubtitle:Landroidx/car/app/model/CarText;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>(ILandroidx/car/app/model/CarText;J)V
    .locals 2
    .param p1, "alertId"    # I
    .param p2, "title"    # Landroidx/car/app/model/CarText;
    .param p3, "durationMillis"    # J

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 196
    iput p1, p0, Landroidx/car/app/model/Alert$Builder;->mId:I

    .line 197
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/Alert$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 198
    iput-wide p3, p0, Landroidx/car/app/model/Alert$Builder;->mDuration:J

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/car/app/model/Alert$Builder;->mActions:Ljava/util/List;

    .line 200
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration should be a positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/Alert$Builder;
    .locals 2
    .param p1, "action"    # Landroidx/car/app/model/Action;

    .line 247
    iget-object v0, p0, Landroidx/car/app/model/Alert$Builder;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Landroidx/car/app/model/Alert$Builder;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    return-object p0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add more than 2 actions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroidx/car/app/model/Alert;
    .locals 1

    .line 270
    new-instance v0, Landroidx/car/app/model/Alert;

    invoke-direct {v0, p0}, Landroidx/car/app/model/Alert;-><init>(Landroidx/car/app/model/Alert$Builder;)V

    return-object v0
.end method

.method public setCallback(Landroidx/car/app/model/AlertCallback;)Landroidx/car/app/model/Alert$Builder;
    .locals 1
    .param p1, "callback"    # Landroidx/car/app/model/AlertCallback;

    .line 263
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/AlertCallback;

    invoke-static {v0}, Landroidx/car/app/model/AlertCallbackDelegateImpl;->create(Landroidx/car/app/model/AlertCallback;)Landroidx/car/app/model/AlertCallbackDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Alert$Builder;->mCallbackDelegate:Landroidx/car/app/model/AlertCallbackDelegate;

    .line 264
    return-object p0
.end method

.method public setIcon(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/model/Alert$Builder;
    .locals 2
    .param p1, "icon"    # Landroidx/car/app/model/CarIcon;

    .line 233
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 234
    iput-object p1, p0, Landroidx/car/app/model/Alert$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 235
    return-object p0
.end method

.method public setSubtitle(Landroidx/car/app/model/CarText;)Landroidx/car/app/model/Alert$Builder;
    .locals 1
    .param p1, "subtitle"    # Landroidx/car/app/model/CarText;

    .line 212
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/Alert$Builder;->mSubtitle:Landroidx/car/app/model/CarText;

    .line 213
    return-object p0
.end method
