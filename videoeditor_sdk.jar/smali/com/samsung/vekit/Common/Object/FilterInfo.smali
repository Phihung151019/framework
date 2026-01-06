.class public Lcom/samsung/vekit/Common/Object/FilterInfo;
.super Ljava/lang/Object;
.source "FilterInfo.java"


# instance fields
.field private filter:Lcom/samsung/vekit/Common/Object/Filter;

.field private filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

.field private intensity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->intensity:F

    .line 10
    new-instance v0, Lcom/samsung/vekit/Common/Object/FilterOption;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/FilterOption;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Common/Object/Filter;F)V
    .locals 1
    .param p1, "filter"    # Lcom/samsung/vekit/Common/Object/Filter;
    .param p2, "intensity"    # F

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    .line 15
    iput p2, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->intensity:F

    .line 16
    new-instance v0, Lcom/samsung/vekit/Common/Object/FilterOption;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/FilterOption;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Common/Object/Filter;FLcom/samsung/vekit/Common/Object/FilterOption;)V
    .locals 0
    .param p1, "filter"    # Lcom/samsung/vekit/Common/Object/Filter;
    .param p2, "intensity"    # F
    .param p3, "filterOption"    # Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    .line 21
    iput p2, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->intensity:F

    .line 22
    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 23
    return-void
.end method


# virtual methods
.method public getFilter()Lcom/samsung/vekit/Common/Object/Filter;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    return-object v0
.end method

.method public getFilterOption()Lcom/samsung/vekit/Common/Object/FilterOption;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-object v0
.end method

.method public getIntensity()F
    .locals 1

    .line 34
    iget v0, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->intensity:F

    return v0
.end method

.method public setFilter(Lcom/samsung/vekit/Common/Object/Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/samsung/vekit/Common/Object/Filter;

    .line 30
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    .line 31
    return-void
.end method

.method public setFilterOption(Lcom/samsung/vekit/Common/Object/FilterOption;)V
    .locals 0
    .param p1, "filterOption"    # Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 46
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 47
    return-void
.end method

.method public setIntensity(F)V
    .locals 0
    .param p1, "intensity"    # F

    .line 38
    iput p1, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->intensity:F

    .line 39
    return-void
.end method
