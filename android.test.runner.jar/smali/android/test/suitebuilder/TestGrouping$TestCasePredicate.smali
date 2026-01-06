.class Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;
.super Ljava/lang/Object;
.source "TestGrouping.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/suitebuilder/TestGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestCasePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/suitebuilder/TestGrouping-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;-><init>()V

    return-void
.end method

.method private hasValidConstructor(Ljava/lang/Class;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 202
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 203
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 204
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 205
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 206
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 207
    .local v5, "parameterTypes":[Ljava/lang/Class;
    array-length v6, v5

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    array-length v6, v5

    if-ne v6, v7, :cond_1

    aget-object v6, v5, v2

    const-class v8, Ljava/lang/String;

    if-ne v6, v8, :cond_1

    .line 209
    :cond_0
    return v7

    .line 204
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    .end local v5    # "parameterTypes":[Ljava/lang/Class;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_2
    nop

    .line 216
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 213
    const-string v3, "TestCase class %s is missing a public constructor with no parameters or a single String parameter - skipping"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TestGrouping"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v2
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "aClass"    # Ljava/lang/Class;

    .line 190
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 191
    .local v0, "modifiers":I
    const-class v1, Ljunit/framework/TestCase;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    invoke-direct {p0, p1}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;->hasValidConstructor(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 191
    :goto_0
    return v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 187
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;->apply(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
