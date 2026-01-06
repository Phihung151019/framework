.class public final Landroidx/car/app/navigation/model/RoutingInfo;
.super Ljava/lang/Object;
.source "RoutingInfo.java"

# interfaces
.implements Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/RoutingInfo$Builder;
    }
.end annotation


# instance fields
.field private final mCurrentDistance:Landroidx/car/app/model/Distance;

.field private final mCurrentStep:Landroidx/car/app/navigation/model/Step;

.field private final mIsLoading:Z

.field private final mJunctionImage:Landroidx/car/app/model/CarIcon;

.field private final mNextStep:Landroidx/car/app/navigation/model/Step;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mCurrentStep:Landroidx/car/app/navigation/model/Step;

    .line 133
    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mCurrentDistance:Landroidx/car/app/model/Distance;

    .line 134
    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mNextStep:Landroidx/car/app/navigation/model/Step;

    .line 135
    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mJunctionImage:Landroidx/car/app/model/CarIcon;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mIsLoading:Z

    .line 137
    return-void
.end method

.method constructor <init>(Landroidx/car/app/navigation/model/RoutingInfo$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/navigation/model/RoutingInfo$Builder;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iget-object v0, p1, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mCurrentStep:Landroidx/car/app/navigation/model/Step;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mCurrentStep:Landroidx/car/app/navigation/model/Step;

    .line 124
    iget-object v0, p1, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mCurrentDistance:Landroidx/car/app/model/Distance;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mCurrentDistance:Landroidx/car/app/model/Distance;

    .line 125
    iget-object v0, p1, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mNextStep:Landroidx/car/app/navigation/model/Step;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mNextStep:Landroidx/car/app/navigation/model/Step;

    .line 126
    iget-object v0, p1, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mJunctionImage:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mJunctionImage:Landroidx/car/app/model/CarIcon;

    .line 127
    iget-boolean v0, p1, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mIsLoading:Z

    iput-boolean v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mIsLoading:Z

    .line 128
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 108
    return v0

    .line 110
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/RoutingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 111
    return v2

    .line 113
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/RoutingInfo;

    .line 115
    .local v1, "otherInfo":Landroidx/car/app/navigation/model/RoutingInfo;
    iget-boolean v3, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mIsLoading:Z

    iget-boolean v4, v1, Landroidx/car/app/navigation/model/RoutingInfo;->mIsLoading:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mCurrentStep:Landroidx/car/app/navigation/model/Step;

    iget-object v4, v1, Landroidx/car/app/navigation/model/RoutingInfo;->mCurrentStep:Landroidx/car/app/navigation/model/Step;

    .line 116
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mCurrentDistance:Landroidx/car/app/model/Distance;

    iget-object v4, v1, Landroidx/car/app/navigation/model/RoutingInfo;->mCurrentDistance:Landroidx/car/app/model/Distance;

    .line 117
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mNextStep:Landroidx/car/app/navigation/model/Step;

    iget-object v4, v1, Landroidx/car/app/navigation/model/RoutingInfo;->mNextStep:Landroidx/car/app/navigation/model/Step;

    .line 118
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mJunctionImage:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/navigation/model/RoutingInfo;->mJunctionImage:Landroidx/car/app/model/CarIcon;

    .line 119
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 115
    :goto_0
    return v0
.end method

.method public getCurrentDistance()Landroidx/car/app/model/Distance;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mCurrentDistance:Landroidx/car/app/model/Distance;

    return-object v0
.end method

.method public getCurrentStep()Landroidx/car/app/navigation/model/Step;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mCurrentStep:Landroidx/car/app/navigation/model/Step;

    return-object v0
.end method

.method public getJunctionImage()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mJunctionImage:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getNextStep()Landroidx/car/app/navigation/model/Step;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mNextStep:Landroidx/car/app/navigation/model/Step;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 102
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mCurrentStep:Landroidx/car/app/navigation/model/Step;

    iget-object v1, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mCurrentDistance:Landroidx/car/app/model/Distance;

    iget-object v2, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mNextStep:Landroidx/car/app/navigation/model/Step;

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mJunctionImage:Landroidx/car/app/model/CarIcon;

    iget-boolean v4, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mIsLoading:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Landroidx/car/app/navigation/model/RoutingInfo;->mIsLoading:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "RoutingInfo"

    return-object v0
.end method
