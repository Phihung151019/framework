.class public final Landroidx/car/app/model/constraints/RowConstraints;
.super Ljava/lang/Object;
.source "RowConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/constraints/RowConstraints$Builder;
    }
.end annotation


# static fields
.field public static final ROW_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/RowConstraints;

.field public static final ROW_CONSTRAINTS_FULL_LIST:Landroidx/car/app/model/constraints/RowConstraints;

.field public static final ROW_CONSTRAINTS_PANE:Landroidx/car/app/model/constraints/RowConstraints;

.field public static final ROW_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/RowConstraints;

.field public static final UNCONSTRAINED:Landroidx/car/app/model/constraints/RowConstraints;


# instance fields
.field private final mCarIconConstraints:Landroidx/car/app/model/constraints/CarIconConstraints;

.field private final mIsImageAllowed:Z

.field private final mIsOnClickListenerAllowed:Z

.field private final mIsToggleAllowed:Z

.field private final mMaxActionsExclusive:I

.field private final mMaxTextLinesPerRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Landroidx/car/app/model/constraints/RowConstraints$Builder;

    invoke-direct {v0}, Landroidx/car/app/model/constraints/RowConstraints$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->build()Landroidx/car/app/model/constraints/RowConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/RowConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/RowConstraints;

    .line 37
    new-instance v0, Landroidx/car/app/model/constraints/RowConstraints$Builder;

    invoke-direct {v0}, Landroidx/car/app/model/constraints/RowConstraints$Builder;-><init>()V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setMaxActionsExclusive(I)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setImageAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setMaxTextLinesPerRow(I)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setToggleAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->build()Landroidx/car/app/model/constraints/RowConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/RowConstraints;->ROW_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/RowConstraints;

    .line 53
    new-instance v0, Landroidx/car/app/model/constraints/RowConstraints$Builder;

    invoke-direct {v0}, Landroidx/car/app/model/constraints/RowConstraints$Builder;-><init>()V

    .line 55
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setMaxActionsExclusive(I)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setImageAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v3}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setMaxTextLinesPerRow(I)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setToggleAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->build()Landroidx/car/app/model/constraints/RowConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/RowConstraints;->ROW_CONSTRAINTS_PANE:Landroidx/car/app/model/constraints/RowConstraints;

    .line 69
    new-instance v0, Landroidx/car/app/model/constraints/RowConstraints$Builder;

    invoke-direct {v0}, Landroidx/car/app/model/constraints/RowConstraints$Builder;-><init>()V

    .line 71
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setMaxActionsExclusive(I)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setImageAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v3}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setMaxTextLinesPerRow(I)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setToggleAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->build()Landroidx/car/app/model/constraints/RowConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/RowConstraints;->ROW_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/RowConstraints;

    .line 80
    new-instance v0, Landroidx/car/app/model/constraints/RowConstraints$Builder;

    sget-object v1, Landroidx/car/app/model/constraints/RowConstraints;->ROW_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/RowConstraints;

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/RowConstraints$Builder;-><init>(Landroidx/car/app/model/constraints/RowConstraints;)V

    .line 81
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->setToggleAllowed(Z)Landroidx/car/app/model/constraints/RowConstraints$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/car/app/model/constraints/RowConstraints$Builder;->build()Landroidx/car/app/model/constraints/RowConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/RowConstraints;->ROW_CONSTRAINTS_FULL_LIST:Landroidx/car/app/model/constraints/RowConstraints;

    .line 80
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/constraints/RowConstraints$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/constraints/RowConstraints$Builder;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iget-boolean v0, p1, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsOnClickListenerAllowed:Z

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mIsOnClickListenerAllowed:Z

    .line 153
    iget v0, p1, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mMaxTextLines:I

    iput v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mMaxTextLinesPerRow:I

    .line 154
    iget v0, p1, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mMaxActionsExclusive:I

    iput v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mMaxActionsExclusive:I

    .line 155
    iget-boolean v0, p1, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsToggleAllowed:Z

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mIsToggleAllowed:Z

    .line 156
    iget-boolean v0, p1, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mIsImageAllowed:Z

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mIsImageAllowed:Z

    .line 157
    iget-object v0, p1, Landroidx/car/app/model/constraints/RowConstraints$Builder;->mCarIconConstraints:Landroidx/car/app/model/constraints/CarIconConstraints;

    iput-object v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mCarIconConstraints:Landroidx/car/app/model/constraints/CarIconConstraints;

    .line 158
    return-void
.end method


# virtual methods
.method public getCarIconConstraints()Landroidx/car/app/model/constraints/CarIconConstraints;
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mCarIconConstraints:Landroidx/car/app/model/constraints/CarIconConstraints;

    return-object v0
.end method

.method public getMaxActionsExclusive()I
    .locals 1

    .line 102
    iget v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mMaxActionsExclusive:I

    return v0
.end method

.method public getMaxTextLinesPerRow()I
    .locals 1

    .line 97
    iget v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mMaxTextLinesPerRow:I

    return v0
.end method

.method public isImageAllowed()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mIsImageAllowed:Z

    return v0
.end method

.method public isOnClickListenerAllowed()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mIsOnClickListenerAllowed:Z

    return v0
.end method

.method public isToggleAllowed()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mIsToggleAllowed:Z

    return v0
.end method

.method public validateOrThrow(Landroidx/car/app/model/Row;)V
    .locals 4
    .param p1, "row"    # Landroidx/car/app/model/Row;

    .line 127
    iget-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mIsOnClickListenerAllowed:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/car/app/model/Row;->getOnClickDelegate()Landroidx/car/app/model/OnClickDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A click listener is not allowed on the row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/car/app/model/constraints/RowConstraints;->mIsToggleAllowed:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/car/app/model/Row;->getToggle()Landroidx/car/app/model/Toggle;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A toggle is not allowed on the row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroidx/car/app/model/Row;->getImage()Landroidx/car/app/model/CarIcon;

    move-result-object v0

    .line 136
    .local v0, "image":Landroidx/car/app/model/CarIcon;
    if-eqz v0, :cond_5

    .line 137
    iget-boolean v1, p0, Landroidx/car/app/model/constraints/RowConstraints;->mIsImageAllowed:Z

    if-eqz v1, :cond_4

    .line 141
    iget-object v1, p0, Landroidx/car/app/model/constraints/RowConstraints;->mCarIconConstraints:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-virtual {v1, v0}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    goto :goto_2

    .line 138
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An image is not allowed on the row"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroidx/car/app/model/Row;->getTexts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroidx/car/app/model/constraints/RowConstraints;->mMaxTextLinesPerRow:I

    if-gt v1, v2, :cond_6

    .line 149
    return-void

    .line 145
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of lines of texts for the row exceeded the supported max of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/car/app/model/constraints/RowConstraints;->mMaxTextLinesPerRow:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
