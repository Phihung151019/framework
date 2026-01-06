.class public final Landroidx/car/app/serialization/Bundler;
.super Ljava/lang/Object;
.source "Bundler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/serialization/Bundler$Trace;,
        Landroidx/car/app/serialization/Bundler$CycleDetectedBundlerException;,
        Landroidx/car/app/serialization/Bundler$TracedBundlerException;,
        Landroidx/car/app/serialization/Bundler$Frame;
    }
.end annotation


# static fields
.field private static final BUNDLED_TYPE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLASS:I = 0x8

.field private static final ENUM:I = 0x7

.field private static final IBINDER:I = 0x9

.field static final ICON_COMPAT_ANDROIDX:Ljava/lang/String; = "androidx.core.graphics.drawable.IconCompat"

.field static final ICON_COMPAT_SUPPORT:Ljava/lang/String; = "android.support.v4.graphics.drawable.IconCompat"

.field private static final IINTERFACE:I = 0x1

.field private static final IMAGE:I = 0x6

.field private static final LIST:I = 0x4

.field private static final MAP:I = 0x2

.field private static final MAX_VALUE_LOG_LENGTH:I = 0x20

.field private static final OBJECT:I = 0x5

.field private static final PRIMITIVE:I = 0x0

.field private static final REDACT_LOG_VALUES:Z = true

.field private static final SET:I = 0x3

.field private static final TAG_1:Ljava/lang/String; = "tag_1"

.field private static final TAG_2:Ljava/lang/String; = "tag_2"

.field private static final TAG_CLASS_NAME:Ljava/lang/String; = "tag_class_name"

.field private static final TAG_CLASS_TYPE:Ljava/lang/String; = "tag_class_type"

.field private static final TAG_VALUE:Ljava/lang/String; = "tag_value"

.field private static final UNOBFUSCATED_TYPE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    invoke-static {}, Landroidx/car/app/serialization/Bundler;->initUnobfuscatedTypeNames()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/car/app/serialization/Bundler;->UNOBFUSCATED_TYPE_NAMES:Ljava/util/Map;

    .line 93
    invoke-static {}, Landroidx/car/app/serialization/Bundler;->initBundledTypeNames()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/car/app/serialization/Bundler;->BUNDLED_TYPE_NAMES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    return-void
.end method

.method private static deserializeClass(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 534
    const-string v0, "tag_value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 540
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 541
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class name is unknown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v2

    .line 536
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    new-instance v1, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v2, "Class is missing the class name"

    invoke-direct {v1, v2, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v1
.end method

.method private static deserializeCollection(Landroid/os/Bundle;Ljava/util/Collection;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p2, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/car/app/serialization/Bundler$Trace;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 488
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    const-string v0, "tag_value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 489
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 494
    .local v2, "value":Landroid/os/Parcelable;
    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3, p2}, Landroidx/car/app/serialization/Bundler;->fromBundle(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 495
    .end local v2    # "value":Landroid/os/Parcelable;
    goto :goto_0

    .line 496
    :cond_0
    return-object p1

    .line 490
    :cond_1
    new-instance v1, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v2, "Bundle is missing the collection"

    invoke-direct {v1, v2, p2}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v1
.end method

.method private static deserializeEnum(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 502
    const-string v0, "tag_value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "enumName":Ljava/lang/String;
    const-string v1, "]"

    if-eqz v0, :cond_1

    .line 507
    const-string v2, "tag_class_name"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "enumClassName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 514
    nop

    .line 515
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "valueOf"

    invoke-static {v3, v4, p1}, Landroidx/car/app/serialization/Bundler;->getClassOrSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 516
    .local v3, "nameMethod":Ljava/lang/reflect/Method;
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 526
    .end local v3    # "nameMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enum of class ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] missing valueOf method"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1, v1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v3

    .line 523
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    .line 524
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enum class ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1, v1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v3

    .line 517
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 518
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enum value ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] does not exist in enum class ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, p1, v3}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v4

    .line 509
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v3, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing enum className ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v3

    .line 504
    .end local v2    # "enumClassName":Ljava/lang/String;
    :cond_1
    new-instance v2, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing enum name ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v2
.end method

.method private static deserializeIBinder(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 446
    const-string v0, "tag_value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 447
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 451
    return-object v0

    .line 448
    :cond_0
    new-instance v1, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v2, "Bundle is missing the binder"

    invoke-direct {v1, v2, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v1
.end method

.method private static deserializeIInterface(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 412
    const-string v0, "tag_value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 413
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 417
    const-string v1, "tag_class_name"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "interfaceClassName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 423
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 424
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "asInterface"

    invoke-static {v2, v3, p1}, Landroidx/car/app/serialization/Bundler;->getClassOrSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 427
    .local v3, "converter":Ljava/lang/reflect/Method;
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 428
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 431
    return-object v4

    .line 429
    :cond_0
    new-instance v5, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v6, "Failed to get interface from binder"

    invoke-direct {v5, v6, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "interfaceClassName":Ljava/lang/String;
    .end local p0    # "bundle":Landroid/os/Bundle;
    .end local p1    # "trace":Landroidx/car/app/serialization/Bundler$Trace;
    throw v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "converter":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v1    # "interfaceClassName":Ljava/lang/String;
    .restart local p0    # "bundle":Landroid/os/Bundle;
    .restart local p1    # "trace":Landroidx/car/app/serialization/Bundler$Trace;
    :catch_0
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method to create IInterface from a Binder is not accessible for interface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1, v2}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v3

    .line 432
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v2

    .line 433
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binder for unknown IInterface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1, v2}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v3

    .line 419
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    new-instance v2, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v3, "Bundle is missing IInterface class name"

    invoke-direct {v2, v3, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v2

    .line 414
    .end local v1    # "interfaceClassName":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v2, "Bundle is missing the binder"

    invoke-direct {v1, v2, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v1
.end method

.method private static deserializeImage(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 547
    const-string v0, "tag_value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 548
    .local v0, "iconCompatBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 551
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createFromBundle(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 552
    .local v1, "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    if-eqz v1, :cond_0

    .line 555
    return-object v1

    .line 553
    :cond_0
    new-instance v2, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v3, "Failed to create IconCompat from bundle"

    invoke-direct {v2, v3, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v2

    .line 549
    .end local v1    # "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    :cond_1
    new-instance v1, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v2, "IconCompat bundle is null"

    invoke-direct {v1, v2, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v1
.end method

.method private static deserializeList(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0, p1}, Landroidx/car/app/serialization/Bundler;->deserializeCollection(Landroid/os/Bundle;Ljava/util/Collection;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static deserializeMap(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 457
    const-string v0, "tag_value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 458
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_3

    .line 462
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 463
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 464
    .local v3, "entry":Landroid/os/Parcelable;
    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "tag_1"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 465
    .local v4, "key":Landroid/os/Bundle;
    move-object v5, v3

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "tag_2"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 467
    .local v5, "value":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 471
    invoke-static {v4, p1}, Landroidx/car/app/serialization/Bundler;->fromBundle(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v5, p1}, Landroidx/car/app/serialization/Bundler;->fromBundle(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v7

    :goto_1
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .end local v3    # "entry":Landroid/os/Parcelable;
    .end local v4    # "key":Landroid/os/Bundle;
    .end local v5    # "value":Landroid/os/Bundle;
    goto :goto_0

    .line 468
    .restart local v3    # "entry":Landroid/os/Parcelable;
    .restart local v4    # "key":Landroid/os/Bundle;
    .restart local v5    # "value":Landroid/os/Bundle;
    :cond_1
    new-instance v2, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v6, "Bundle is missing key"

    invoke-direct {v2, v6, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v2

    .line 474
    .end local v3    # "entry":Landroid/os/Parcelable;
    .end local v4    # "key":Landroid/os/Bundle;
    .end local v5    # "value":Landroid/os/Bundle;
    :cond_2
    return-object v1

    .line 459
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_3
    new-instance v1, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v2, "Bundle is missing the map"

    invoke-direct {v1, v2, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v1
.end method

.method private static deserializeObject(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;
    .locals 12
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 560
    const-string v0, "CarApp.Bun"

    const-string v1, "tag_class_name"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 566
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 567
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 568
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 569
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 571
    .local v3, "obj":Ljava/lang/Object;
    invoke-static {v2}, Landroidx/car/app/serialization/Bundler;->getFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    .line 572
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 573
    invoke-static {v7}, Landroidx/car/app/serialization/Bundler;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    .line 575
    .local v8, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 576
    .local v9, "value":Ljava/lang/Object;
    if-nez v9, :cond_0

    .line 578
    const-string v10, "androidx.core.graphics.drawable.IconCompat"

    const-string v11, "android.support.v4.graphics.drawable.IconCompat"

    .line 579
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 578
    invoke-virtual {p0, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 582
    :cond_0
    instance-of v10, v9, Landroid/os/Bundle;

    if-eqz v10, :cond_1

    .line 583
    move-object v10, v9

    check-cast v10, Landroid/os/Bundle;

    invoke-static {v10, p1}, Landroidx/car/app/serialization/Bundler;->fromBundle(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v3, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 584
    :cond_1
    if-nez v9, :cond_2

    .line 585
    const/4 v10, 0x3

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 586
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value is null for field: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldName":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_2
    :goto_1
    goto :goto_0

    .line 590
    :cond_3
    return-object v3

    .line 600
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to deserialize class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v2

    .line 596
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constructor or field is not accessible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v2

    .line 593
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object missing no args constructor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v2

    .line 591
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object for unknown class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v2

    .line 562
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_4
    new-instance v0, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v2, "Bundle is missing the class name"

    invoke-direct {v0, v2, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v0
.end method

.method private static deserializePrimitive(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 402
    const-string v0, "tag_value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 403
    .local v0, "primitive":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 406
    return-object v0

    .line 404
    :cond_0
    new-instance v1, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v2, "Bundle is missing the primitive value"

    invoke-direct {v1, v2, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v1
.end method

.method private static deserializeSet(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0, p1}, Landroidx/car/app/serialization/Bundler;->deserializeCollection(Landroid/os/Bundle;Ljava/util/Collection;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static ellipsize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 701
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 702
    return-object p0

    .line 704
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x3

    const-string v1, "CarApp.Bun"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbundling "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "tag_class_type"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroidx/car/app/serialization/Bundler;->getBundledTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    invoke-static {}, Landroidx/car/app/serialization/Bundler$Trace;->create()Landroidx/car/app/serialization/Bundler$Trace;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/car/app/serialization/Bundler;->fromBundle(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static fromBundle(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "parentTrace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 198
    const-class v0, Landroidx/car/app/serialization/Bundler;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 200
    const-string v0, "tag_class_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 202
    .local v0, "classType":I
    invoke-static {p0}, Landroidx/car/app/serialization/Bundler$Trace;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroidx/car/app/serialization/Bundler$Trace;->fromParent(Ljava/lang/Object;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Landroidx/car/app/serialization/Bundler$Trace;

    move-result-object v1

    .line 203
    .local v1, "trace":Landroidx/car/app/serialization/Bundler$Trace;
    packed-switch v0, :pswitch_data_0

    .line 227
    :try_start_0
    new-instance v2, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    goto :goto_0

    .line 209
    :pswitch_0
    invoke-static {p0, v1}, Landroidx/car/app/serialization/Bundler;->deserializeIBinder(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 209
    :cond_0
    return-object v2

    .line 223
    :pswitch_1
    :try_start_1
    invoke-static {p0, v1}, Landroidx/car/app/serialization/Bundler;->deserializeClass(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 223
    :cond_1
    return-object v2

    .line 221
    :pswitch_2
    :try_start_2
    invoke-static {p0, v1}, Landroidx/car/app/serialization/Bundler;->deserializeEnum(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 221
    :cond_2
    return-object v2

    .line 217
    :pswitch_3
    :try_start_3
    invoke-static {p0, v1}, Landroidx/car/app/serialization/Bundler;->deserializeImage(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 217
    :cond_3
    return-object v2

    .line 219
    :pswitch_4
    :try_start_4
    invoke-static {p0, v1}, Landroidx/car/app/serialization/Bundler;->deserializeObject(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 219
    :cond_4
    return-object v2

    .line 215
    :pswitch_5
    :try_start_5
    invoke-static {p0, v1}, Landroidx/car/app/serialization/Bundler;->deserializeList(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 215
    :cond_5
    return-object v2

    .line 213
    :pswitch_6
    :try_start_6
    invoke-static {p0, v1}, Landroidx/car/app/serialization/Bundler;->deserializeSet(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 229
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 213
    :cond_6
    return-object v2

    .line 211
    :pswitch_7
    :try_start_7
    invoke-static {p0, v1}, Landroidx/car/app/serialization/Bundler;->deserializeMap(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 229
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 211
    :cond_7
    return-object v2

    .line 207
    :pswitch_8
    :try_start_8
    invoke-static {p0, v1}, Landroidx/car/app/serialization/Bundler;->deserializeIInterface(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 229
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 207
    :cond_8
    return-object v2

    .line 205
    :pswitch_9
    :try_start_9
    invoke-static {p0, v1}, Landroidx/car/app/serialization/Bundler;->deserializePrimitive(Landroid/os/Bundle;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/Object;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 229
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 205
    :cond_9
    return-object v2

    .line 202
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 227
    :goto_0
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported class type in bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    .end local v0    # "classType":I
    .end local v1    # "trace":Landroidx/car/app/serialization/Bundler$Trace;
    .end local p0    # "bundle":Landroid/os/Bundle;
    .end local p1    # "parentTrace":Landroidx/car/app/serialization/Bundler$Trace;
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 202
    .restart local v0    # "classType":I
    .restart local v1    # "trace":Landroidx/car/app/serialization/Bundler$Trace;
    .restart local p0    # "bundle":Landroid/os/Bundle;
    .restart local p1    # "parentTrace":Landroidx/car/app/serialization/Bundler$Trace;
    :goto_1
    if-eqz v1, :cond_a

    :try_start_b
    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Trace;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getBundledTypeName(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 665
    sget-object v0, Landroidx/car/app/serialization/Bundler;->BUNDLED_TYPE_NAMES:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 666
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "unknown"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static getClassOrSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Landroidx/car/app/serialization/Bundler$Trace;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/Bundler$TracedBundlerException;
        }
    .end annotation

    .line 635
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_2

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_2

    .line 639
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 640
    .local v0, "methods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 641
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 642
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 643
    return-object v3

    .line 640
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroidx/car/app/serialization/Bundler;->getClassOrSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1

    .line 636
    .end local v0    # "methods":[Ljava/lang/reflect/Method;
    :cond_2
    new-instance v0, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v0
.end method

.method static getFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 607
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/car/app/serialization/Bundler;->getFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 616
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    if-eqz p0, :cond_3

    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    goto :goto_1

    .line 621
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 622
    .local v1, "classFields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 623
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 624
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 628
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Landroidx/car/app/serialization/Bundler;->getFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 629
    return-object v0

    .line 618
    .end local v1    # "classFields":[Ljava/lang/reflect/Field;
    :cond_3
    :goto_1
    return-object v0
.end method

.method static getUnobfuscatedClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 650
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroidx/car/app/serialization/Bundler;->UNOBFUSCATED_TYPE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 653
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    const-string v1, "<List>"

    return-object v1

    .line 655
    :cond_0
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    const-string v1, "<Map>"

    return-object v1

    .line 657
    :cond_1
    const-class v1, Ljava/util/Set;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    const-string v1, "<Set>"

    return-object v1

    .line 661
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static initBundledTypeNames()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 670
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 671
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "primitive"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iInterface"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iBinder"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "map"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "set"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "object"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    return-object v0
.end method

.method private static initUnobfuscatedTypeNames()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 684
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 685
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Class<*>;Ljava/lang/String;>;"
    const-class v1, Ljava/lang/Boolean;

    const-string v2, "bool"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-class v1, Ljava/lang/Byte;

    const-string v2, "byte"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-class v1, Ljava/lang/Short;

    const-string v2, "short"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-class v1, Ljava/lang/Integer;

    const-string v2, "int"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-class v1, Ljava/lang/Long;

    const-string v2, "long"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-class v1, Ljava/lang/Double;

    const-string v2, "double"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-class v1, Ljava/lang/Float;

    const-string v2, "float"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-class v1, Ljava/lang/String;

    const-string v2, "string"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-class v1, Landroid/os/Parcelable;

    const-string v2, "parcelable"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-class v1, Ljava/util/Map;

    const-string v2, "map"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-class v1, Ljava/util/List;

    const-string v2, "list"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-class v1, Landroidx/core/graphics/drawable/IconCompat;

    const-string v2, "image"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    return-object v0
.end method

.method static isPrimitiveType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 709
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static serializeClass(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 354
    .local p0, "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 355
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "tag_class_type"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    const-string v1, "tag_value"

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-object v0
.end method

.method private static serializeCollection(Ljava/util/Collection;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;
    .locals 7
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/car/app/serialization/Bundler$Trace;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 322
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 323
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 326
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 327
    .local v4, "entry":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Landroidx/car/app/serialization/Bundler;->toBundle(Ljava/lang/Object;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    nop

    .end local v4    # "entry":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 329
    goto :goto_0

    .line 330
    :cond_0
    const-string v3, "tag_value"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 332
    return-object v0
.end method

.method private static serializeEnum(Ljava/lang/Object;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 336
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 337
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "tag_class_type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v1, v2, p1}, Landroidx/car/app/serialization/Bundler;->getClassOrSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 342
    .local v1, "nameMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .local v2, "enumName":Ljava/lang/String;
    nop

    .line 348
    const-string v3, "tag_value"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tag_class_name"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-object v0

    .line 343
    .end local v2    # "enumName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 345
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v4, "Enum missing name method"

    invoke-direct {v3, v4, p1, v2}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static serializeIBinder(Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 3
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 277
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 279
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "tag_class_type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    const-string v1, "tag_value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 282
    return-object v0
.end method

.method private static serializeIInterface(Landroid/os/IInterface;)Landroid/os/Bundle;
    .locals 4
    .param p0, "iInterface"    # Landroid/os/IInterface;

    .line 265
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 267
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "className":Ljava/lang/String;
    const-string v2, "tag_class_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    const-string v2, "tag_value"

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 271
    const-string v2, "tag_class_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-object v0
.end method

.method private static serializeImage(Landroidx/core/graphics/drawable/IconCompat;)Landroid/os/Bundle;
    .locals 3
    .param p0, "image"    # Landroidx/core/graphics/drawable/IconCompat;

    .line 361
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 362
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "tag_class_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    const-string v1, "tag_value"

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 364
    return-object v0
.end method

.method private static serializeList(Ljava/util/List;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;
    .locals 3
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/car/app/serialization/Bundler$Trace;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 309
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroidx/car/app/serialization/Bundler;->serializeCollection(Ljava/util/Collection;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v0

    .line 310
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "tag_class_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    return-object v0
.end method

.method private static serializeMap(Ljava/util/Map;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;
    .locals 11
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/car/app/serialization/Bundler$Trace;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 287
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 289
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .line 292
    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 293
    .local v5, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 294
    .local v6, "keyValue":Landroid/os/Bundle;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p1}, Landroidx/car/app/serialization/Bundler;->toBundle(Ljava/lang/Object;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "tag_1"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 295
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 296
    nop

    .line 297
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<value "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p1}, Landroidx/car/app/serialization/Bundler;->toBundle(Ljava/lang/Object;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v7

    .line 296
    const-string v8, "tag_2"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 299
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 300
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .end local v5    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v6    # "keyValue":Landroid/os/Bundle;
    goto :goto_0

    .line 302
    :cond_1
    const-string v4, "tag_class_type"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string v1, "tag_value"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 305
    return-object v0
.end method

.method private static serializeObject(Ljava/lang/Object;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;
    .locals 10
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    nop

    .line 376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Landroidx/car/app/serialization/Bundler;->getFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 377
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 379
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "tag_class_type"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    const-string v3, "tag_class_name"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 382
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 383
    invoke-static {v4}, Landroidx/car/app/serialization/Bundler;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "fieldName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 387
    .local v6, "value":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 390
    .end local v6    # "value":Ljava/lang/Object;
    .local v7, "value":Ljava/lang/Object;
    nop

    .line 392
    if-eqz v7, :cond_0

    .line 393
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, p1}, Landroidx/car/app/serialization/Bundler;->toBundle(Ljava/lang/Object;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 395
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 388
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "fieldName":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 389
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Field is not accessible: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1, v3}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v7

    .line 397
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    return-object v2

    .line 371
    .end local v1    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class to deserialize is missing a no args constructor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static serializePrimitive(Ljava/lang/Object;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 233
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 235
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "tag_class_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    instance-of v1, p0, Ljava/lang/Boolean;

    const-string v2, "tag_value"

    if-eqz v1, :cond_0

    .line 237
    move-object v1, p0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 238
    :cond_0
    instance-of v1, p0, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    .line 239
    move-object v1, p0

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_0

    .line 240
    :cond_1
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_2

    .line 241
    move-object v1, p0

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_0

    .line 242
    :cond_2
    instance-of v1, p0, Ljava/lang/Short;

    if-eqz v1, :cond_3

    .line 243
    move-object v1, p0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_0

    .line 244
    :cond_3
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 245
    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 246
    :cond_4
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 247
    move-object v1, p0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 248
    :cond_5
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_6

    .line 249
    move-object v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 250
    :cond_6
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 251
    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 252
    :cond_7
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 253
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_8
    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_9

    .line 255
    move-object v1, p0

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 261
    :goto_0
    return-object v0

    .line 257
    :cond_9
    new-instance v1, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported primitive type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v1
.end method

.method private static serializeSet(Ljava/util/Set;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;
    .locals 3
    .param p1, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/car/app/serialization/Bundler$Trace;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 315
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroidx/car/app/serialization/Bundler;->serializeCollection(Ljava/util/Collection;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v0

    .line 316
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "tag_class_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    return-object v0
.end method

.method public static toBundle(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroidx/car/app/serialization/Bundler;->getUnobfuscatedClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x3

    const-string v2, "CarApp.Bun"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bundling "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    invoke-static {}, Landroidx/car/app/serialization/Bundler$Trace;->create()Landroidx/car/app/serialization/Bundler$Trace;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroidx/car/app/serialization/Bundler;->toBundle(Ljava/lang/Object;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private static toBundle(Ljava/lang/Object;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "display"    # Ljava/lang/String;
    .param p2, "parentTrace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 134
    if-eqz p0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/car/app/serialization/Bundler$Trace;->find(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    new-instance v0, Landroidx/car/app/serialization/Bundler$CycleDetectedBundlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found cycle while bundling type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroidx/car/app/serialization/Bundler$CycleDetectedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    throw v0

    .line 140
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Landroidx/car/app/serialization/Bundler$Trace;->fromParent(Ljava/lang/Object;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Landroidx/car/app/serialization/Bundler$Trace;

    move-result-object v0

    .line 141
    .local v0, "trace":Landroidx/car/app/serialization/Bundler$Trace;
    if-eqz p0, :cond_17

    .line 143
    :try_start_0
    instance-of v1, p0, Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_3

    .line 144
    move-object v1, p0

    check-cast v1, Landroidx/core/graphics/drawable/IconCompat;

    invoke-static {v1}, Landroidx/car/app/serialization/Bundler;->serializeImage(Landroidx/core/graphics/drawable/IconCompat;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 144
    :cond_2
    return-object v1

    .line 145
    :cond_3
    :try_start_1
    invoke-static {p0}, Landroidx/car/app/serialization/Bundler;->isPrimitiveType(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_4

    goto/16 :goto_1

    .line 147
    :cond_4
    instance-of v1, p0, Landroid/os/IInterface;

    if-eqz v1, :cond_6

    .line 148
    move-object v1, p0

    check-cast v1, Landroid/os/IInterface;

    invoke-static {v1}, Landroidx/car/app/serialization/Bundler;->serializeIInterface(Landroid/os/IInterface;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 148
    :cond_5
    return-object v1

    .line 149
    :cond_6
    :try_start_2
    instance-of v1, p0, Landroid/os/IBinder;

    if-eqz v1, :cond_8

    .line 150
    move-object v1, p0

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Landroidx/car/app/serialization/Bundler;->serializeIBinder(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 150
    :cond_7
    return-object v1

    .line 151
    :cond_8
    :try_start_3
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 152
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Landroidx/car/app/serialization/Bundler;->serializeMap(Ljava/util/Map;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 152
    :cond_9
    return-object v1

    .line 153
    :cond_a
    :try_start_4
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_c

    .line 154
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v0}, Landroidx/car/app/serialization/Bundler;->serializeList(Ljava/util/List;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 154
    :cond_b
    return-object v1

    .line 155
    :cond_c
    :try_start_5
    instance-of v1, p0, Ljava/util/Set;

    if-eqz v1, :cond_e

    .line 156
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, v0}, Landroidx/car/app/serialization/Bundler;->serializeSet(Ljava/util/Set;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 156
    :cond_d
    return-object v1

    .line 157
    :cond_e
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 158
    invoke-static {p0, v0}, Landroidx/car/app/serialization/Bundler;->serializeEnum(Ljava/lang/Object;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 168
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 158
    :cond_f
    return-object v1

    .line 159
    :cond_10
    :try_start_7
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_12

    .line 160
    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Landroidx/car/app/serialization/Bundler;->serializeClass(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 168
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 160
    :cond_11
    return-object v1

    .line 161
    :cond_12
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_14

    .line 166
    invoke-static {p0, v0}, Landroidx/car/app/serialization/Bundler;->serializeObject(Ljava/lang/Object;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 168
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 166
    :cond_13
    return-object v1

    .line 162
    :cond_14
    :try_start_9
    new-instance v1, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v2, "Object serializing contains an array, use a list or a set instead"

    invoke-direct {v1, v2, v0}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    .end local v0    # "trace":Landroidx/car/app/serialization/Bundler$Trace;
    .end local p0    # "obj":Ljava/lang/Object;
    .end local p1    # "display":Ljava/lang/String;
    .end local p2    # "parentTrace":Landroidx/car/app/serialization/Bundler$Trace;
    throw v1

    .line 146
    .restart local v0    # "trace":Landroidx/car/app/serialization/Bundler$Trace;
    .restart local p0    # "obj":Ljava/lang/Object;
    .restart local p1    # "display":Ljava/lang/String;
    .restart local p2    # "parentTrace":Landroidx/car/app/serialization/Bundler$Trace;
    :cond_15
    :goto_1
    invoke-static {p0, v0}, Landroidx/car/app/serialization/Bundler;->serializePrimitive(Ljava/lang/Object;Landroidx/car/app/serialization/Bundler$Trace;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 168
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroidx/car/app/serialization/Bundler$Trace;->close()V

    .line 146
    :cond_16
    return-object v1

    .line 140
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 142
    :cond_17
    :try_start_a
    new-instance v1, Landroidx/car/app/serialization/Bundler$TracedBundlerException;

    const-string v2, "Bundling of null object is not supported"

    invoke-direct {v1, v2, v0}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    .end local v0    # "trace":Landroidx/car/app/serialization/Bundler$Trace;
    .end local p0    # "obj":Ljava/lang/Object;
    .end local p1    # "display":Ljava/lang/String;
    .end local p2    # "parentTrace":Landroidx/car/app/serialization/Bundler$Trace;
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 140
    .restart local v0    # "trace":Landroidx/car/app/serialization/Bundler$Trace;
    .restart local p0    # "obj":Ljava/lang/Object;
    .restart local p1    # "display":Ljava/lang/String;
    .restart local p2    # "parentTrace":Landroidx/car/app/serialization/Bundler$Trace;
    :goto_2
    if-eqz v0, :cond_18

    :try_start_b
    invoke-virtual {v0}, Landroidx/car/app/serialization/Bundler$Trace;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_3
    throw v1
.end method
