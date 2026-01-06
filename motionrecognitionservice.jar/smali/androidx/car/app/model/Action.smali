.class public final Landroidx/car/app/model/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/Action$Builder;,
        Landroidx/car/app/model/Action$ActionFlag;,
        Landroidx/car/app/model/Action$ActionType;
    }
.end annotation


# static fields
.field public static final APP_ICON:Landroidx/car/app/model/Action;

.field public static final BACK:Landroidx/car/app/model/Action;

.field public static final FLAG_DEFAULT:I = 0x4
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation
.end field

.field public static final FLAG_IS_PERSISTENT:I = 0x2
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation
.end field

.field public static final FLAG_PRIMARY:I = 0x1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation
.end field

.field public static final PAN:Landroidx/car/app/model/Action;

.field public static final TYPE_APP_ICON:I = 0x10002

.field public static final TYPE_BACK:I = 0x10003

.field public static final TYPE_CUSTOM:I = 0x1

.field public static final TYPE_PAN:I = 0x10004

.field static final TYPE_STANDARD:I = 0x10000


# instance fields
.field private final mBackgroundColor:Landroidx/car/app/model/CarColor;

.field private final mFlags:I

.field private final mIcon:Landroidx/car/app/model/CarIcon;

.field private final mIsEnabled:Z

.field private final mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

.field private final mTitle:Landroidx/car/app/model/CarText;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 160
    new-instance v0, Landroidx/car/app/model/Action;

    const v1, 0x10002

    invoke-direct {v0, v1}, Landroidx/car/app/model/Action;-><init>(I)V

    sput-object v0, Landroidx/car/app/model/Action;->APP_ICON:Landroidx/car/app/model/Action;

    .line 173
    new-instance v0, Landroidx/car/app/model/Action;

    const v1, 0x10003

    invoke-direct {v0, v1}, Landroidx/car/app/model/Action;-><init>(I)V

    sput-object v0, Landroidx/car/app/model/Action;->BACK:Landroidx/car/app/model/Action;

    .line 187
    new-instance v0, Landroidx/car/app/model/Action;

    const v1, 0x10004

    invoke-direct {v0, v1}, Landroidx/car/app/model/Action;-><init>(I)V

    sput-object v0, Landroidx/car/app/model/Action;->PAN:Landroidx/car/app/model/Action;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/Action;->mTitle:Landroidx/car/app/model/CarText;

    .line 323
    iput-object v0, p0, Landroidx/car/app/model/Action;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 324
    sget-object v1, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    iput-object v1, p0, Landroidx/car/app/model/Action;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 325
    iput-object v0, p0, Landroidx/car/app/model/Action;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 326
    const/4 v0, 0x1

    iput v0, p0, Landroidx/car/app/model/Action;->mType:I

    .line 327
    const/4 v1, 0x0

    iput v1, p0, Landroidx/car/app/model/Action;->mFlags:I

    .line 328
    iput-boolean v0, p0, Landroidx/car/app/model/Action;->mIsEnabled:Z

    .line 329
    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .param p1, "type"    # I

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/car/app/model/Action;->mTitle:Landroidx/car/app/model/CarText;

    .line 302
    iput-object v1, p0, Landroidx/car/app/model/Action;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 303
    sget-object v2, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    iput-object v2, p0, Landroidx/car/app/model/Action;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 304
    iput-object v1, p0, Landroidx/car/app/model/Action;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 305
    iput p1, p0, Landroidx/car/app/model/Action;->mType:I

    .line 306
    const/4 v1, 0x0

    iput v1, p0, Landroidx/car/app/model/Action;->mFlags:I

    .line 307
    iput-boolean v0, p0, Landroidx/car/app/model/Action;->mIsEnabled:Z

    .line 308
    return-void

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Standard action constructor used with non standard type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroidx/car/app/model/Action$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/Action$Builder;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iget-object v0, p1, Landroidx/car/app/model/Action$Builder;->mTitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/Action;->mTitle:Landroidx/car/app/model/CarText;

    .line 312
    iget-object v0, p1, Landroidx/car/app/model/Action$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/model/Action;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 313
    iget-object v0, p1, Landroidx/car/app/model/Action$Builder;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/model/Action;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 314
    iget-object v0, p1, Landroidx/car/app/model/Action$Builder;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    iput-object v0, p0, Landroidx/car/app/model/Action;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 315
    iget v0, p1, Landroidx/car/app/model/Action$Builder;->mType:I

    iput v0, p0, Landroidx/car/app/model/Action;->mType:I

    .line 316
    iget v0, p1, Landroidx/car/app/model/Action$Builder;->mFlags:I

    iput v0, p0, Landroidx/car/app/model/Action;->mFlags:I

    .line 317
    iget-boolean v0, p1, Landroidx/car/app/model/Action$Builder;->mIsEnabled:Z

    iput-boolean v0, p0, Landroidx/car/app/model/Action;->mIsEnabled:Z

    .line 318
    return-void
.end method

.method static isStandardActionType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 357
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 280
    sparse-switch p0, :sswitch_data_0

    .line 290
    const-string v0, "<unknown>"

    return-object v0

    .line 288
    :sswitch_0
    const-string v0, "PAN"

    return-object v0

    .line 286
    :sswitch_1
    const-string v0, "BACK"

    return-object v0

    .line 284
    :sswitch_2
    const-string v0, "APP_ICON"

    return-object v0

    .line 282
    :sswitch_3
    const-string v0, "CUSTOM"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x10002 -> :sswitch_2
        0x10003 -> :sswitch_1
        0x10004 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 338
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 339
    return v0

    .line 341
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/Action;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 342
    return v2

    .line 344
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/Action;

    .line 348
    .local v1, "otherAction":Landroidx/car/app/model/Action;
    iget-object v3, p0, Landroidx/car/app/model/Action;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/Action;->mTitle:Landroidx/car/app/model/CarText;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroidx/car/app/model/Action;->mType:I

    iget v4, v1, Landroidx/car/app/model/Action;->mType:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroidx/car/app/model/Action;->mIcon:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/model/Action;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 350
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/model/Action;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 351
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Landroidx/car/app/model/Action;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroidx/car/app/model/Action;->mFlags:I

    .line 352
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroidx/car/app/model/Action;->mFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroidx/car/app/model/Action;->mIsEnabled:Z

    iget-boolean v4, v1, Landroidx/car/app/model/Action;->mIsEnabled:Z

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    .line 348
    :goto_2
    return v0
.end method

.method public getBackgroundColor()Landroidx/car/app/model/CarColor;
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/car/app/model/Action;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    return-object v0
.end method

.method public getFlags()I
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation

    .line 244
    iget v0, p0, Landroidx/car/app/model/Action;->mFlags:I

    return v0
.end method

.method public getIcon()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 221
    iget-object v0, p0, Landroidx/car/app/model/Action;->mIcon:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getOnClickDelegate()Landroidx/car/app/model/OnClickDelegate;
    .locals 1

    .line 257
    iget-object v0, p0, Landroidx/car/app/model/Action;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 210
    iget-object v0, p0, Landroidx/car/app/model/Action;->mTitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 237
    iget v0, p0, Landroidx/car/app/model/Action;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 333
    iget-object v0, p0, Landroidx/car/app/model/Action;->mTitle:Landroidx/car/app/model/CarText;

    iget v1, p0, Landroidx/car/app/model/Action;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/model/Action;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v5, p0, Landroidx/car/app/model/Action;->mIcon:Landroidx/car/app/model/CarIcon;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Landroidx/car/app/model/Action;->mIsEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 265
    iget-boolean v0, p0, Landroidx/car/app/model/Action;->mIsEnabled:Z

    return v0
.end method

.method public isStandard()Z
    .locals 1

    .line 249
    iget v0, p0, Landroidx/car/app/model/Action;->mType:I

    invoke-static {v0}, Landroidx/car/app/model/Action;->isStandardActionType(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/Action;->mType:I

    invoke-static {v1}, Landroidx/car/app/model/Action;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Action;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Action;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/app/model/Action;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
