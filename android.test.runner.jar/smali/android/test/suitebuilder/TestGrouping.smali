.class Landroid/test/suitebuilder/TestGrouping;
.super Ljava/lang/Object;
.source "TestGrouping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;,
        Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;,
        Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;,
        Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestGrouping"

.field static final SORT_BY_FULLY_QUALIFIED_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation
.end field

.field static final SORT_BY_SIMPLE_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final testCaseClasses:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;-><init>(Landroid/test/suitebuilder/TestGrouping-IA;)V

    sput-object v0, Landroid/test/suitebuilder/TestGrouping;->SORT_BY_SIMPLE_NAME:Ljava/util/Comparator;

    .line 54
    new-instance v0, Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;-><init>(Landroid/test/suitebuilder/TestGrouping-IA;)V

    sput-object v0, Landroid/test/suitebuilder/TestGrouping;->SORT_BY_FULLY_QUALIFIED_NAME:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 59
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Class<+Ljunit/framework/TestCase;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    .line 61
    iput-object p2, p0, Landroid/test/suitebuilder/TestGrouping;->classLoader:Ljava/lang/ClassLoader;

    .line 62
    return-void
.end method

.method private getTestMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 79
    .local p1, "testCaseClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    new-instance v1, Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;-><init>(Landroid/test/suitebuilder/TestGrouping-IA;)V

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestGrouping;->select(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private select(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lcom/android/internal/util/Predicate<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 148
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "selectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 150
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v2}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 154
    :cond_1
    return-object v0
.end method

.method private selectTestClasses(Ljava/util/Set;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation

    .line 139
    .local p1, "allClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "testClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Ljunit/framework/TestCase;>;>;"
    new-instance v1, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;-><init>(Landroid/test/suitebuilder/TestGrouping-IA;)V

    invoke-direct {p0, p1, v1}, Landroid/test/suitebuilder/TestGrouping;->select(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 142
    .local v2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 144
    :cond_0
    return-object v0
.end method

.method private testCaseClassesInPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Landroid/test/ClassPathPackageInfoSource;->forClassPath(Ljava/lang/ClassLoader;)Landroid/test/ClassPathPackageInfoSource;

    move-result-object v0

    .line 134
    .local v0, "source":Landroid/test/ClassPathPackageInfoSource;
    invoke-virtual {v0, p1}, Landroid/test/ClassPathPackageInfoSource;->getTopLevelClassesRecursive(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/test/suitebuilder/TestGrouping;->selectTestClasses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method varargs addPackagesRecursive([Ljava/lang/String;)V
    .locals 6
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 109
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 110
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/test/suitebuilder/TestGrouping;->testCaseClassesInPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 111
    .local v3, "addedClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Ljunit/framework/TestCase;>;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Package: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' could not be found or has no tests"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TestGrouping"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v4, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v4, v3}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 109
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "addedClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Ljunit/framework/TestCase;>;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 84
    if-ne p0, p1, :cond_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/test/suitebuilder/TestGrouping;

    .line 91
    .local v1, "other":Landroid/test/suitebuilder/TestGrouping;
    iget-object v2, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    iget-object v3, v1, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    return v0

    .line 94
    :cond_2
    iget-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v2, v1, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 88
    .end local v1    # "other":Landroid/test/suitebuilder/TestGrouping;
    :cond_3
    :goto_0
    return v0
.end method

.method public getTests()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "testMethods":Ljava/util/List;, "Ljava/util/List<Landroid/test/suitebuilder/TestMethod;>;"
    iget-object v1, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 71
    .local v2, "testCase":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-direct {p0, v2}, Landroid/test/suitebuilder/TestGrouping;->getTestMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 72
    .local v4, "testMethod":Ljava/lang/reflect/Method;
    new-instance v5, Landroid/test/suitebuilder/TestMethod;

    invoke-direct {v5, v4, v2}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v4    # "testMethod":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 74
    .end local v2    # "testCase":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->hashCode()I

    move-result v0

    return v0
.end method

.method varargs removePackagesRecursive([Ljava/lang/String;)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 127
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    invoke-direct {p0, v2}, Landroid/test/suitebuilder/TestGrouping;->testCaseClassesInPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    .line 126
    .end local v2    # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method
