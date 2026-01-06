.class public final Landroidx/car/app/validation/HostValidator$Builder;
.super Ljava/lang/Object;
.source "HostValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/validation/HostValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAllowedHosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/car/app/validation/HostValidator$Builder;->mAllowedHosts:Ljava/util/Map;

    .line 359
    iput-object p1, p0, Landroidx/car/app/validation/HostValidator$Builder;->mContext:Landroid/content/Context;

    .line 360
    return-void
.end method

.method private cleanUp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 428
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAllowedHost(Ljava/lang/String;Ljava/lang/String;)Landroidx/car/app/validation/HostValidator$Builder;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "digest"    # Ljava/lang/String;

    .line 377
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Landroidx/car/app/validation/HostValidator$Builder;->mAllowedHosts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 380
    .local v0, "digests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 382
    iget-object v1, p0, Landroidx/car/app/validation/HostValidator$Builder;->mAllowedHosts:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    return-object p0
.end method

.method public addAllowedHosts(I)Landroidx/car/app/validation/HostValidator$Builder;
    .locals 9
    .param p1, "allowListedHostsRes"    # I

    .line 403
    iget-object v0, p0, Landroidx/car/app/validation/HostValidator$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 404
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "entries":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 409
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 411
    .local v5, "entry":Ljava/lang/String;
    const-string v6, ","

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, "keyValue":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 416
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-direct {p0, v7}, Landroidx/car/app/validation/HostValidator$Builder;->cleanUp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aget-object v8, v6, v3

    invoke-direct {p0, v8}, Landroidx/car/app/validation/HostValidator$Builder;->cleanUp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroidx/car/app/validation/HostValidator$Builder;->addAllowedHost(Ljava/lang/String;Ljava/lang/String;)Landroidx/car/app/validation/HostValidator$Builder;

    .line 409
    .end local v5    # "entry":Ljava/lang/String;
    .end local v6    # "keyValue":[Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 413
    .restart local v5    # "entry":Ljava/lang/String;
    .restart local v6    # "keyValue":[Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid allowed host entry: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    .end local v5    # "entry":Ljava/lang/String;
    .end local v6    # "keyValue":[Ljava/lang/String;
    :cond_1
    return-object p0

    .line 406
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid allowlist res id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public build()Landroidx/car/app/validation/HostValidator;
    .locals 4

    .line 424
    new-instance v0, Landroidx/car/app/validation/HostValidator;

    iget-object v1, p0, Landroidx/car/app/validation/HostValidator$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/validation/HostValidator$Builder;->mAllowedHosts:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/car/app/validation/HostValidator;-><init>(Landroid/content/pm/PackageManager;Ljava/util/Map;Z)V

    return-object v0
.end method
