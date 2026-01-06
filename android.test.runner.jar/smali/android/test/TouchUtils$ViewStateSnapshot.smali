.class Landroid/test/TouchUtils$ViewStateSnapshot;
.super Ljava/lang/Object;
.source "TouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/TouchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewStateSnapshot"
.end annotation


# instance fields
.field final mChildCount:I

.field final mFirst:Landroid/view/View;

.field final mFirstTop:I

.field final mLast:Landroid/view/View;

.field final mLastBottom:I


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    .line 813
    iget v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    if-nez v0, :cond_0

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    iput-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    .line 815
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    goto :goto_0

    .line 817
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    .line 818
    iget v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    .line 819
    iget-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    .line 820
    iget-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    .line 822
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/test/TouchUtils-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/test/TouchUtils$ViewStateSnapshot;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 826
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 827
    return v0

    .line 829
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 833
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/test/TouchUtils$ViewStateSnapshot;

    .line 834
    .local v2, "that":Landroid/test/TouchUtils$ViewStateSnapshot;
    iget v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    iget v4, v2, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    iget v4, v2, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    iget-object v4, v2, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    iget-object v4, v2, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    iget v4, v2, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 830
    .end local v2    # "that":Landroid/test/TouchUtils$ViewStateSnapshot;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 843
    iget-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 844
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v1, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 845
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget v1, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    add-int/2addr v0, v1

    .line 846
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    add-int/2addr v1, v2

    .line 847
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    add-int/2addr v0, v2

    .line 848
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
