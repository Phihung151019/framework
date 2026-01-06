.class public final Landroidx/car/app/model/constraints/RowConstraints$Builder;
.super Ljava/lang/Object;
.source "RowConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/constraints/RowConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mCarIconConstraints:Landroidx/car/app/model/constraints/CarIconConstraints;

.field mIsImageAllowed:Z

.field mIsOnClickListenerAllowed:Z

.field mIsToggleAllowed:Z

.field mMaxActionsExclusive:I

.field mMaxTextLines:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsOnClickListenerAllowed:Z

    .line 163
    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsToggleAllowed:Z

    .line 164
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mMaxTextLines:I

    .line 165
    iput v1, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mMaxActionsExclusive:I

    .line 166
    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsImageAllowed:Z

    .line 167
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarIconConstraints;

    iput-object v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mCarIconConstraints:Landroidx/car/app/model/constraints/CarIconConstraints;

    .line 221
    return-void
.end method

.method public constructor <init>(Landroidx/car/app/model/constraints/RowConstraints;)V
    .locals 2
    .param p1, "constraints"    # Landroidx/car/app/model/constraints/RowConstraints;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsOnClickListenerAllowed:Z

    .line 163
    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsToggleAllowed:Z

    .line 164
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mMaxTextLines:I

    .line 165
    iput v1, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mMaxActionsExclusive:I

    .line 166
    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsImageAllowed:Z

    .line 167
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarIconConstraints;

    iput-object v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mCarIconConstraints:Landroidx/car/app/model/constraints/CarIconConstraints;

    .line 230
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/RowConstraints;->isOnClickListenerAllowed()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsOnClickListenerAllowed:Z

    .line 232
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/RowConstraints;->getMaxTextLinesPerRow()I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mMaxTextLines:I

    .line 233
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/RowConstraints;->getMaxActionsExclusive()I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mMaxActionsExclusive:I

    .line 234
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/RowConstraints;->isToggleAllowed()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsToggleAllowed:Z

    .line 235
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/RowConstraints;->isImageAllowed()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsImageAllowed:Z

    .line 236
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/RowConstraints;->getCarIconConstraints()Landroidx/car/app/model/constraints/CarIconConstraints;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mCarIconConstraints:Landroidx/car/app/model/constraints/CarIconConstraints;

    .line 237
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/constraints/RowConstraints;
    .locals 1

    .line 216
    new-instance v0, Landroidx/car/app/model/constraints/RowConstraints;

    invoke-direct {v0, p0}, Landroidx/car/app/model/constraints/RowConstraints;-><init>(Landroidx/car/app/model/constraints/RowConstraints$Builder;)V

    return-object v0
.end method

.method public setCarIconConstraints(Landroidx/car/app/model/constraints/CarIconConstraints;)Landroidx/car/app/model/constraints/RowConstraints$Builder;
    .locals 0
    .param p1, "carIconConstraints"    # Landroidx/car/app/model/constraints/CarIconConstraints;

    .line 207
    iput-object p1, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mCarIconConstraints:Landroidx/car/app/model/constraints/CarIconConstraints;

    .line 208
    return-object p0
.end method

.method public setImageAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;
    .locals 0
    .param p1, "imageAllowed"    # Z

    .line 193
    iput-boolean p1, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsImageAllowed:Z

    .line 194
    return-object p0
.end method

.method public setMaxActionsExclusive(I)Landroidx/car/app/model/constraints/RowConstraints$Builder;
    .locals 0
    .param p1, "maxActionsExclusive"    # I

    .line 186
    iput p1, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mMaxActionsExclusive:I

    .line 187
    return-object p0
.end method

.method public setMaxTextLinesPerRow(I)Landroidx/car/app/model/constraints/RowConstraints$Builder;
    .locals 0
    .param p1, "maxTextLinesPerRow"    # I

    .line 179
    iput p1, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mMaxTextLines:I

    .line 180
    return-object p0
.end method

.method public setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;
    .locals 0
    .param p1, "isOnClickListenerAllowed"    # Z

    .line 172
    iput-boolean p1, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsOnClickListenerAllowed:Z

    .line 173
    return-object p0
.end method

.method public setToggleAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;
    .locals 0
    .param p1, "toggleAllowed"    # Z

    .line 200
    iput-boolean p1, p0, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsToggleAllowed:Z

    .line 201
    return-object p0
.end method
