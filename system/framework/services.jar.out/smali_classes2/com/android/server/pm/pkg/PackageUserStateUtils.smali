.class public Lcom/android/server/pm/pkg/PackageUserStateUtils;
.super Ljava/lang/Object;
.source "PackageUserStateUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PackageUserStateUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z
    .locals 8
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "flags"    # J

    .line 101
    const-wide/32 v0, 0x400000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    .line 102
    .local v0, "matchAnyUser":Z
    :goto_0
    const-wide/16 v5, 0x2000

    and-long/2addr v5, p1

    cmp-long v5, v5, v2

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    .line 103
    .local v5, "matchUninstalled":Z
    :goto_1
    const-wide v6, 0x100000000L

    and-long/2addr v6, p1

    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v1

    .line 104
    .local v2, "matchArchived":Z
    :goto_2
    if-nez v5, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    move v3, v1

    goto :goto_4

    :goto_3
    move v3, v4

    .line 106
    .local v3, "matchDataExists":Z
    :goto_4
    if-eqz v0, :cond_5

    .line 107
    return v4

    .line 109
    :cond_5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 115
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isPrivacyHidden()Z

    move-result v1

    if-nez v1, :cond_6

    .line 117
    return v4

    .line 118
    :cond_6
    return v3

    .line 121
    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v6

    if-eqz v6, :cond_8

    move v1, v4

    :cond_8
    return v1
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .locals 7
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # J

    .line 136
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v5, p2

    .end local p0    # "state":Lcom/android/server/pm/pkg/PackageUserState;
    .end local p2    # "flags":J
    .local v1, "state":Lcom/android/server/pm/pkg/PackageUserState;
    .local v5, "flags":J
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZLcom/android/internal/pm/pkg/component/ParsedMainComponent;J)Z
    .locals 6
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "isPackageEnabled"    # Z
    .param p2, "parsedComponent"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .param p3, "flags"    # J

    .line 142
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v2

    .line 143
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 142
    move-object v0, p0

    move v1, p1

    move-wide v4, p3

    .end local p0    # "state":Lcom/android/server/pm/pkg/PackageUserState;
    .end local p1    # "isPackageEnabled":Z
    .end local p3    # "flags":J
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserState;
    .local v1, "isPackageEnabled":Z
    .local v4, "flags":J
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z
    .locals 7
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "isPackageEnabled"    # Z
    .param p2, "isComponentEnabled"    # Z
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 152
    const-wide/16 v0, 0x200

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 153
    return v1

    .line 156
    :cond_0
    const-wide v4, 0x200000000L

    and-long/2addr v4, p4

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    return v4

    .line 162
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 167
    :pswitch_1
    const-wide/32 v5, 0x8000

    and-long/2addr v5, p4

    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    .line 168
    return v4

    .line 165
    :pswitch_2
    return v4

    .line 172
    :cond_2
    :pswitch_3
    if-nez p1, :cond_3

    .line 173
    return v4

    .line 182
    :cond_3
    :goto_0
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageUserState;->isComponentEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    return v1

    .line 184
    :cond_4
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageUserState;->isComponentDisabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    return v4

    .line 188
    :cond_5
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .locals 9
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # J

    .line 40
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v4, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-boolean v5, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v7, p2

    .end local p0    # "state":Lcom/android/server/pm/pkg/PackageUserState;
    .end local p2    # "flags":J
    .local v1, "state":Lcom/android/server/pm/pkg/PackageUserState;
    .local v7, "flags":J
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/internal/pm/pkg/component/ParsedMainComponent;J)Z
    .locals 8
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "isSystem"    # Z
    .param p2, "isPackageEnabled"    # Z
    .param p3, "component"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .param p4, "flags"    # J

    .line 47
    invoke-interface {p3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v3

    .line 48
    invoke-interface {p3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v4

    invoke-interface {p3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v5

    .line 47
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p4

    .end local p0    # "state":Lcom/android/server/pm/pkg/PackageUserState;
    .end local p1    # "isSystem":Z
    .end local p2    # "isPackageEnabled":Z
    .end local p4    # "flags":J
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserState;
    .local v1, "isSystem":Z
    .local v2, "isPackageEnabled":Z
    .local v6, "flags":J
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z
    .locals 12
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "isSystem"    # Z
    .param p2, "isPackageEnabled"    # Z
    .param p3, "isComponentEnabled"    # Z
    .param p4, "isComponentDirectBootAware"    # Z
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "flags"    # J

    .line 63
    move-wide/from16 v4, p6

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    move v10, v0

    .line 64
    .local v10, "matchUninstalled":Z
    invoke-static {p0, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-nez v10, :cond_2

    .line 65
    :cond_1
    invoke-static {v9, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 68
    :cond_2
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object/from16 v3, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z

    move-result v11

    if-nez v11, :cond_3

    .line 69
    invoke-static {v9, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 72
    :cond_3
    const-wide/32 v0, 0x100000

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4

    .line 73
    if-nez p1, :cond_4

    .line 74
    invoke-static {v9, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 78
    :cond_4
    const-wide/32 v0, 0x40000

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    if-nez p4, :cond_5

    move v0, v8

    goto :goto_1

    :cond_5
    move v0, v9

    .line 80
    .local v0, "matchesUnaware":Z
    :goto_1
    const-wide/32 v1, 0x80000

    and-long/2addr v1, v4

    cmp-long v1, v1, v6

    if-eqz v1, :cond_6

    if-eqz p4, :cond_6

    move v1, v8

    goto :goto_2

    :cond_6
    move v1, v9

    .line 82
    .local v1, "matchesAware":Z
    :goto_2
    if-nez v0, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    goto :goto_3

    :cond_8
    move v8, v9

    :goto_3
    invoke-static {v8, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result v2

    return v2
.end method

.method public static isPackageEnabled(Lcom/android/server/pm/pkg/PackageUserState;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 1
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 193
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 202
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v0

    return v0

    .line 199
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 195
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static reportIfDebug(ZJ)Z
    .locals 0
    .param p0, "result"    # Z
    .param p1, "flags"    # J

    .line 131
    return p0
.end method
