.class Lorg/junit/experimental/max/MaxHistory$TestComparator;
.super Ljava/lang/Object;
.source "MaxHistory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/experimental/max/MaxHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/junit/runner/Description;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/experimental/max/MaxHistory;


# direct methods
.method private constructor <init>(Lorg/junit/experimental/max/MaxHistory;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lorg/junit/experimental/max/MaxHistory$TestComparator;->this$0:Lorg/junit/experimental/max/MaxHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/experimental/max/MaxHistory;Lorg/junit/experimental/max/MaxHistory-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/junit/experimental/max/MaxHistory$TestComparator;-><init>(Lorg/junit/experimental/max/MaxHistory;)V

    return-void
.end method

.method private getFailure(Lorg/junit/runner/Description;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Lorg/junit/runner/Description;

    .line 155
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$TestComparator;->this$0:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v0, p1}, Lorg/junit/experimental/max/MaxHistory;->getFailureTimestamp(Lorg/junit/runner/Description;)Ljava/lang/Long;

    move-result-object v0

    .line 156
    .local v0, "result":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 157
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 159
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 138
    check-cast p1, Lorg/junit/runner/Description;

    check-cast p2, Lorg/junit/runner/Description;

    invoke-virtual {p0, p1, p2}, Lorg/junit/experimental/max/MaxHistory$TestComparator;->compare(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I
    .locals 3
    .param p1, "o1"    # Lorg/junit/runner/Description;
    .param p2, "o2"    # Lorg/junit/runner/Description;

    .line 141
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$TestComparator;->this$0:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v0, p1}, Lorg/junit/experimental/max/MaxHistory;->isNewTest(Lorg/junit/runner/Description;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, -0x1

    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$TestComparator;->this$0:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v0, p2}, Lorg/junit/experimental/max/MaxHistory;->isNewTest(Lorg/junit/runner/Description;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_1
    invoke-direct {p0, p2}, Lorg/junit/experimental/max/MaxHistory$TestComparator;->getFailure(Lorg/junit/runner/Description;)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/junit/experimental/max/MaxHistory$TestComparator;->getFailure(Lorg/junit/runner/Description;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 149
    .local v0, "result":I
    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    .line 151
    :cond_2
    iget-object v1, p0, Lorg/junit/experimental/max/MaxHistory$TestComparator;->this$0:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v1, p1}, Lorg/junit/experimental/max/MaxHistory;->getTestDuration(Lorg/junit/runner/Description;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lorg/junit/experimental/max/MaxHistory$TestComparator;->this$0:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v2, p2}, Lorg/junit/experimental/max/MaxHistory;->getTestDuration(Lorg/junit/runner/Description;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v1

    .line 149
    :goto_0
    return v1
.end method
