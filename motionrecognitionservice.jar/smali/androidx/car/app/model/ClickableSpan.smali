.class public final Landroidx/car/app/model/ClickableSpan;
.super Landroidx/car/app/model/CarSpan;
.source "ClickableSpan.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x2
.end annotation


# instance fields
.field private final mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Landroidx/car/app/model/CarSpan;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/ClickableSpan;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 112
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroidx/car/app/model/OnClickListener;

    .line 105
    invoke-direct {p0}, Landroidx/car/app/model/CarSpan;-><init>()V

    .line 106
    invoke-static {p1}, Landroidx/car/app/model/OnClickDelegateImpl;->create(Landroidx/car/app/model/OnClickListener;)Landroidx/car/app/model/OnClickDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ClickableSpan;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 107
    return-void
.end method

.method public static create(Landroidx/car/app/model/OnClickListener;)Landroidx/car/app/model/ClickableSpan;
    .locals 2
    .param p0, "onClickListener"    # Landroidx/car/app/model/OnClickListener;

    .line 70
    new-instance v0, Landroidx/car/app/model/ClickableSpan;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/OnClickListener;

    invoke-direct {v0, v1}, Landroidx/car/app/model/ClickableSpan;-><init>(Landroidx/car/app/model/OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 93
    return v0

    .line 95
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/ClickableSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 96
    return v2

    .line 98
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/ClickableSpan;

    .line 102
    .local v1, "otherSpan":Landroidx/car/app/model/ClickableSpan;
    iget-object v3, p0, Landroidx/car/app/model/ClickableSpan;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Landroidx/car/app/model/ClickableSpan;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getOnClickDelegate()Landroidx/car/app/model/OnClickDelegate;
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/car/app/model/ClickableSpan;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/OnClickDelegate;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/car/app/model/ClickableSpan;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "[clickable]"

    return-object v0
.end method
