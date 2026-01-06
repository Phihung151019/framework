.class public Landroidx/car/app/model/TabTemplate;
.super Ljava/lang/Object;
.source "TabTemplate.java"

# interfaces
.implements Landroidx/car/app/model/Template;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/TabTemplate$Builder;,
        Landroidx/car/app/model/TabTemplate$TabCallback;
    }
.end annotation


# instance fields
.field private final mActiveTabContentId:Ljava/lang/String;

.field private final mHeaderAction:Landroidx/car/app/model/Action;

.field private final mIsLoading:Z

.field private final mTabCallbackDelegate:Landroidx/car/app/model/TabCallbackDelegate;

.field private final mTabContents:Landroidx/car/app/model/TabContents;

.field private final mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/model/TabTemplate;->mIsLoading:Z

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/app/model/TabTemplate;->mTabs:Ljava/util/List;

    .line 180
    iput-object v0, p0, Landroidx/car/app/model/TabTemplate;->mTabContents:Landroidx/car/app/model/TabContents;

    .line 181
    iput-object v0, p0, Landroidx/car/app/model/TabTemplate;->mTabCallbackDelegate:Landroidx/car/app/model/TabCallbackDelegate;

    .line 182
    iput-object v0, p0, Landroidx/car/app/model/TabTemplate;->mActiveTabContentId:Ljava/lang/String;

    .line 183
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/TabTemplate$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/TabTemplate$Builder;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iget-boolean v0, p1, Landroidx/car/app/model/TabTemplate$Builder;->mIsLoading:Z

    iput-boolean v0, p0, Landroidx/car/app/model/TabTemplate;->mIsLoading:Z

    .line 168
    iget-object v0, p1, Landroidx/car/app/model/TabTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 169
    iget-object v0, p1, Landroidx/car/app/model/TabTemplate$Builder;->mTabs:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate;->mTabs:Ljava/util/List;

    .line 170
    iget-object v0, p1, Landroidx/car/app/model/TabTemplate$Builder;->mTabContents:Landroidx/car/app/model/TabContents;

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate;->mTabContents:Landroidx/car/app/model/TabContents;

    .line 171
    iget-object v0, p1, Landroidx/car/app/model/TabTemplate$Builder;->mTabCallbackDelegate:Landroidx/car/app/model/TabCallbackDelegate;

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate;->mTabCallbackDelegate:Landroidx/car/app/model/TabCallbackDelegate;

    .line 172
    iget-object v0, p1, Landroidx/car/app/model/TabTemplate$Builder;->mActiveTabContentId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate;->mActiveTabContentId:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 151
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 152
    return v0

    .line 154
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/TabTemplate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 155
    return v2

    .line 157
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/TabTemplate;

    .line 159
    .local v1, "otherTemplate":Landroidx/car/app/model/TabTemplate;
    iget-boolean v3, p0, Landroidx/car/app/model/TabTemplate;->mIsLoading:Z

    iget-boolean v4, v1, Landroidx/car/app/model/TabTemplate;->mIsLoading:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/TabTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    iget-object v4, v1, Landroidx/car/app/model/TabTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 160
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/TabTemplate;->mTabs:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/model/TabTemplate;->mTabs:Ljava/util/List;

    .line 161
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/TabTemplate;->mTabContents:Landroidx/car/app/model/TabContents;

    iget-object v4, v1, Landroidx/car/app/model/TabTemplate;->mTabContents:Landroidx/car/app/model/TabContents;

    .line 162
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/TabTemplate;->mActiveTabContentId:Ljava/lang/String;

    .line 163
    invoke-virtual {v1}, Landroidx/car/app/model/TabTemplate;->getActiveTabContentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 159
    :goto_0
    return v0
.end method

.method public getActiveTabContentId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/car/app/model/TabTemplate;->mActiveTabContentId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderAction()Landroidx/car/app/model/Action;
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/car/app/model/TabTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Action;

    return-object v0
.end method

.method public getTabCallbackDelegate()Landroidx/car/app/model/TabCallbackDelegate;
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/car/app/model/TabTemplate;->mTabCallbackDelegate:Landroidx/car/app/model/TabCallbackDelegate;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/TabCallbackDelegate;

    return-object v0
.end method

.method public getTabContents()Landroidx/car/app/model/TabContents;
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/car/app/model/TabTemplate;->mTabContents:Landroidx/car/app/model/TabContents;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/TabContents;

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Tab;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroidx/car/app/model/TabTemplate;->mTabs:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 146
    iget-boolean v0, p0, Landroidx/car/app/model/TabTemplate;->mIsLoading:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/TabTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    iget-object v2, p0, Landroidx/car/app/model/TabTemplate;->mTabs:Ljava/util/List;

    iget-object v3, p0, Landroidx/car/app/model/TabTemplate;->mTabContents:Landroidx/car/app/model/TabContents;

    iget-object v4, p0, Landroidx/car/app/model/TabTemplate;->mActiveTabContentId:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Landroidx/car/app/model/TabTemplate;->mIsLoading:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, "TabTemplate"

    return-object v0
.end method
