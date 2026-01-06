.class public final Landroidx/car/app/model/constraints/TabsConstraints$Builder;
.super Ljava/lang/Object;
.source "TabsConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/constraints/TabsConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mMaxTabs:I

.field mMinTabs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/car/app/model/constraints/TabsConstraints$Builder;->mMaxTabs:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/model/constraints/TabsConstraints$Builder;->mMinTabs:I

    .line 121
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/constraints/TabsConstraints;
    .locals 1

    .line 117
    new-instance v0, Landroidx/car/app/model/constraints/TabsConstraints;

    invoke-direct {v0, p0}, Landroidx/car/app/model/constraints/TabsConstraints;-><init>(Landroidx/car/app/model/constraints/TabsConstraints$Builder;)V

    return-object v0
.end method

.method public setMaxTabs(I)Landroidx/car/app/model/constraints/TabsConstraints$Builder;
    .locals 0
    .param p1, "maxTabs"    # I

    .line 101
    iput p1, p0, Landroidx/car/app/model/constraints/TabsConstraints$Builder;->mMaxTabs:I

    .line 102
    return-object p0
.end method

.method public setMinTabs(I)Landroidx/car/app/model/constraints/TabsConstraints$Builder;
    .locals 0
    .param p1, "minTabs"    # I

    .line 108
    iput p1, p0, Landroidx/car/app/model/constraints/TabsConstraints$Builder;->mMinTabs:I

    .line 109
    return-object p0
.end method
