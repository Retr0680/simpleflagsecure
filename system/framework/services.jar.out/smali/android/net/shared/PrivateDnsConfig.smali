.class public Landroid/net/shared/PrivateDnsConfig;
.super Ljava/lang/Object;
.source "PrivateDnsConfig.java"


# instance fields
.field public final ddrEnabled:Z

.field public final dohIps:[Ljava/net/InetAddress;

.field public final dohName:Ljava/lang/String;

.field public final dohPath:Ljava/lang/String;

.field public final dohPort:I

.field public final hostname:Ljava/lang/String;

.field public final ips:[Ljava/net/InetAddress;

.field public final mode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/shared/PrivateDnsConfig;-><init>(Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/net/InetAddress;ZLjava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;I)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "ips"    # [Ljava/net/InetAddress;
    .param p4, "ddrEnabled"    # Z
    .param p5, "dohName"    # Ljava/lang/String;
    .param p6, "dohIps"    # [Ljava/net/InetAddress;
    .param p7, "dohPath"    # Ljava/lang/String;
    .param p8, "dohPort"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    .line 100
    const-string v0, ""

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 101
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/net/InetAddress;

    goto :goto_1

    :cond_1
    new-array v2, v1, [Ljava/net/InetAddress;

    :goto_1
    iput-object v2, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 102
    iput-boolean p4, p0, Landroid/net/shared/PrivateDnsConfig;->ddrEnabled:Z

    .line 103
    if-eqz p5, :cond_2

    move-object v2, p5

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    iput-object v2, p0, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    .line 104
    if-eqz p6, :cond_3

    invoke-virtual {p6}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;

    goto :goto_3

    :cond_3
    new-array v1, v1, [Ljava/net/InetAddress;

    :goto_3
    iput-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    .line 105
    if-eqz p7, :cond_4

    move-object v0, p7

    :cond_4
    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    .line 106
    iput p8, p0, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/net/shared/PrivateDnsConfig;)V
    .locals 1
    .param p1, "cfg"    # Landroid/net/shared/PrivateDnsConfig;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iget v0, p1, Landroid/net/shared/PrivateDnsConfig;->mode:I

    iput v0, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    .line 111
    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 113
    iget-boolean v0, p1, Landroid/net/shared/PrivateDnsConfig;->ddrEnabled:Z

    iput-boolean v0, p0, Landroid/net/shared/PrivateDnsConfig;->ddrEnabled:Z

    .line 114
    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    .line 116
    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    .line 117
    iget v0, p1, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    iput v0, p0, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 10
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "ips"    # [Ljava/net/InetAddress;

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x3

    move v2, v0

    :goto_0
    nop

    .line 86
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "hostname":Ljava/lang/String;
    .end local p2    # "ips":[Ljava/net/InetAddress;
    .local v3, "hostname":Ljava/lang/String;
    .local v4, "ips":[Ljava/net/InetAddress;
    invoke-direct/range {v1 .. v9}, Landroid/net/shared/PrivateDnsConfig;-><init>(ILjava/lang/String;[Ljava/net/InetAddress;ZLjava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 10
    .param p1, "useTls"    # Z

    .line 75
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/net/shared/PrivateDnsConfig;-><init>(ILjava/lang/String;[Ljava/net/InetAddress;ZLjava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public static fromParcel(Landroid/net/PrivateDnsConfigParcel;)Landroid/net/shared/PrivateDnsConfig;
    .locals 11
    .param p0, "parcel"    # Landroid/net/PrivateDnsConfigParcel;

    .line 184
    iget-object v0, p0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/net/InetAddress;

    .line 185
    .local v0, "ips":[Ljava/net/InetAddress;
    iget-object v1, p0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1, v2}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v1

    .line 186
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/net/InetAddress;

    .line 199
    .end local v0    # "ips":[Ljava/net/InetAddress;
    .local v5, "ips":[Ljava/net/InetAddress;
    iget v0, p0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 200
    new-instance v0, Landroid/net/shared/PrivateDnsConfig;

    iget-object v1, p0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Landroid/net/shared/PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    return-object v0

    .line 203
    :cond_0
    iget-object v0, p0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/net/InetAddress;

    .line 204
    .local v0, "dohIps":[Ljava/net/InetAddress;
    iget-object v1, p0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1, v2}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v1

    .line 205
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Ljava/net/InetAddress;

    .line 206
    .end local v0    # "dohIps":[Ljava/net/InetAddress;
    .local v8, "dohIps":[Ljava/net/InetAddress;
    new-instance v2, Landroid/net/shared/PrivateDnsConfig;

    iget v3, p0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    iget-object v4, p0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    iget-boolean v6, p0, Landroid/net/PrivateDnsConfigParcel;->ddrEnabled:Z

    iget-object v7, p0, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

    iget-object v9, p0, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

    iget v10, p0, Landroid/net/PrivateDnsConfigParcel;->dohPort:I

    invoke-direct/range {v2 .. v10}, Landroid/net/shared/PrivateDnsConfig;-><init>(ILjava/lang/String;[Ljava/net/InetAddress;ZLjava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-object v2
.end method

.method private static modeAsString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .line 154
    packed-switch p0, :pswitch_data_0

    .line 158
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 157
    :pswitch_0
    const-string/jumbo v0, "strict"

    return-object v0

    .line 156
    :pswitch_1
    const-string/jumbo v0, "opportunistic"

    return-object v0

    .line 155
    :pswitch_2
    const-string/jumbo v0, "off"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public areSettingsSameAs(Landroid/net/shared/PrivateDnsConfig;)Z
    .locals 2
    .param p1, "other"    # Landroid/net/shared/PrivateDnsConfig;

    .line 138
    iget v0, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    iget v1, p1, Landroid/net/shared/PrivateDnsConfig;->mode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inOpportunisticMode()Z
    .locals 2

    .line 131
    iget v0, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inStrictMode()Z
    .locals 2

    .line 124
    iget v0, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toParcel()Landroid/net/PrivateDnsConfigParcel;
    .locals 4

    .line 166
    new-instance v0, Landroid/net/PrivateDnsConfigParcel;

    invoke-direct {v0}, Landroid/net/PrivateDnsConfigParcel;-><init>()V

    .line 167
    .local v0, "parcel":Landroid/net/PrivateDnsConfigParcel;
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 169
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda11;-><init>()V

    .line 168
    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    .line 170
    iget v1, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    iput v1, v0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    .line 171
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    .line 173
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda11;-><init>()V

    .line 172
    invoke-static {v1, v2, v3}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    .line 174
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

    .line 175
    iget v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    iput v1, v0, Landroid/net/PrivateDnsConfigParcel;->dohPort:I

    .line 176
    iget-boolean v1, p0, Landroid/net/shared/PrivateDnsConfig;->ddrEnabled:Z

    iput-boolean v1, v0, Landroid/net/PrivateDnsConfigParcel;->ddrEnabled:Z

    .line 177
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/net/shared/PrivateDnsConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    .line 144
    invoke-static {v1}, Landroid/net/shared/PrivateDnsConfig;->modeAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dohName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dohIps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    .line 146
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dohPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dohPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    return-object v0
.end method
