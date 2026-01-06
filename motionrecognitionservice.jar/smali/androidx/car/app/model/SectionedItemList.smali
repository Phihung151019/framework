.class public final Landroidx/car/app/model/SectionedItemList;
.super Ljava/lang/Object;
.source "SectionedItemList.java"


# instance fields
.field private final mHeader:Landroidx/car/app/model/CarText;

.field private final mItemList:Landroidx/car/app/model/ItemList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/SectionedItemList;->mItemList:Landroidx/car/app/model/ItemList;

    .line 100
    iput-object v0, p0, Landroidx/car/app/model/SectionedItemList;->mHeader:Landroidx/car/app/model/CarText;

    .line 101
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/ItemList;Landroidx/car/app/model/CarText;)V
    .locals 0
    .param p1, "itemList"    # Landroidx/car/app/model/ItemList;
    .param p2, "header"    # Landroidx/car/app/model/CarText;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroidx/car/app/model/SectionedItemList;->mItemList:Landroidx/car/app/model/ItemList;

    .line 95
    iput-object p2, p0, Landroidx/car/app/model/SectionedItemList;->mHeader:Landroidx/car/app/model/CarText;

    .line 96
    return-void
.end method

.method public static create(Landroidx/car/app/model/ItemList;Ljava/lang/CharSequence;)Landroidx/car/app/model/SectionedItemList;
    .locals 3
    .param p0, "itemList"    # Landroidx/car/app/model/ItemList;
    .param p1, "sectionHeader"    # Ljava/lang/CharSequence;

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    .line 52
    .local v0, "sectionHeaderText":Landroidx/car/app/model/CarText;
    sget-object v1, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    invoke-virtual {v1, v0}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 53
    new-instance v1, Landroidx/car/app/model/SectionedItemList;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/model/ItemList;

    invoke-direct {v1, v2, v0}, Landroidx/car/app/model/SectionedItemList;-><init>(Landroidx/car/app/model/ItemList;Landroidx/car/app/model/CarText;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 82
    return v0

    .line 84
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/SectionedItemList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 85
    return v2

    .line 87
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/SectionedItemList;

    .line 89
    .local v1, "otherList":Landroidx/car/app/model/SectionedItemList;
    iget-object v3, p0, Landroidx/car/app/model/SectionedItemList;->mItemList:Landroidx/car/app/model/ItemList;

    iget-object v4, v1, Landroidx/car/app/model/SectionedItemList;->mItemList:Landroidx/car/app/model/ItemList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/SectionedItemList;->mHeader:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/SectionedItemList;->mHeader:Landroidx/car/app/model/CarText;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getHeader()Landroidx/car/app/model/CarText;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/car/app/model/SectionedItemList;->mHeader:Landroidx/car/app/model/CarText;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getItemList()Landroidx/car/app/model/ItemList;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/car/app/model/SectionedItemList;->mItemList:Landroidx/car/app/model/ItemList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/ItemList;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 76
    iget-object v0, p0, Landroidx/car/app/model/SectionedItemList;->mItemList:Landroidx/car/app/model/ItemList;

    iget-object v1, p0, Landroidx/car/app/model/SectionedItemList;->mHeader:Landroidx/car/app/model/CarText;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ items: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/SectionedItemList;->mItemList:Landroidx/car/app/model/ItemList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", has header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/SectionedItemList;->mHeader:Landroidx/car/app/model/CarText;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
